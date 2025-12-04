function tunnel() {
  /home/tim/workspace/tools-devutil/dist/devutil ktunnel --name "k8s-dev-aws-lz-dsh"
}
function kadmin() {
  /home/tim/workspace/tools-devutil/dist/devutil kupdate --dev --name $(kubectl config current-context)
}
function kconnect() {
  kubie ctx $(fzf_clusters)
}

function dauth() {
  bw_session=$(bw unlock --raw)
  export DAUTH_USERNAME="vane528"
  export DAUTH_PASSWORD=$(bw get password $DAUTH_USERNAME --session $bw_session)
  export DAUTH_MFA=$(bw get totp $DAUTH_USERNAME --session $bw_session)
  /home/tim/workspace/tools-devutil/dist/devutil dauth
}

function fzf_clusters() {
  declare -A clusters
  clusters_sorted=()

  supported_clusters="$(yq -r '. | keys | sort | .[]' "~/workspace/dsh-k8s-work/scripts/clusters.yaml")"
  for cluster in $supported_clusters; do
    clusters_sorted+=("$cluster")
    cluster_data=$(yq ".${cluster}" "~/workspace/dsh-k8s-work/scripts/clusters.yaml" | sed "s/: /=/")
    clusters["$cluster"]="$cluster_data"
  done
  echo "${clusters_sorted[@]}" | tr ' ' '\n' | fzf
}

function tunnel() {
  /home/tim/workspace/tools-devutil/dist/devutil ktunnel --name "k8s-dev-aws-lz-dsh"
}
function kadmin() {
  /home/tim/workspace/tools-devutil/dist/devutil kupdate --dev --name $(kubectl config current-context)
}
function kconnect() {
  kubie ctx $(yq -r '. | keys[] ' ~/workspace/dsh-k8s-work/scripts/clusters.yaml | fzf)
}

function dauth() {
  bw_session=$(bw unlock --raw)
  export DAUTH_USERNAME="vane528"
  export DAUTH_PASSWORD=$(bw get password $DAUTH_USERNAME --session $bw_session)
  export DAUTH_MFA=$(bw get totp $DAUTH_USERNAME --session $bw_session)
  /home/tim/workspace/tools-devutil/dist/devutil dauth
}

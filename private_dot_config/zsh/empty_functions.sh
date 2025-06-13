function tunnel() {
  ~/workspace/dsh-k8s-work/scripts/kubectx-tunnel.sh
}

function dauth() {
  bw_output=$(bw get item vane528)
  export DAUTH_USERNAME="vane528"
  export DAUTH_PASSWORD=$(echo $bw_output | jq '.password')
  export DAUTH_MFA=$(echo $bw_output | jq '.totp')
  /home/tim/.local/share/mise/installs/devutil/0.10.6/bin/devutil dauth
}

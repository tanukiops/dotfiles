function tunnel() {
  ~/workspace/dsh-k8s-work/scripts/kubectx-tunnel.sh
}

function dauth() {
  bw_session=$(bw unlock --raw)
  export DAUTH_USERNAME="vane528"
  export DAUTH_PASSWORD=$(bw get password $DAUTH_USERNAME --session $bw_session)
  export DAUTH_MFA=$(bw get totp $DAUTH_USERNAME --session $bw_session)
  /home/tim/.local/share/mise/installs/devutil/0.10.6/bin/devutil dauth
}

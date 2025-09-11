function tunnel() {
  /home/tim/workspace/tools-devutil/dist/devutil ktunnel
}

function dauth() {
  bw_session=$(bw unlock --raw)
  export DAUTH_USERNAME="vane528"
  export DAUTH_PASSWORD=$(bw get password $DAUTH_USERNAME --session $bw_session)
  export DAUTH_MFA=$(bw get totp $DAUTH_USERNAME --session $bw_session)
  /home/tim/workspace/tools-devutil/dist/devutil dauth
}

function tunnel() {
  ~/workspace/dsh-k8s-work/scripts/kubectx-tunnel.sh
}

function dauth() {
  export DAUTH_USERNAME="vane528"
  export DAUTH_PASSWORD=$(bw get password vane528)
  /home/tim/.local/share/mise/installs/devutil/0.10.6/bin/devutil dauth
}

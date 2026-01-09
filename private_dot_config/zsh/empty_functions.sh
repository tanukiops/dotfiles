function tunnel() {
  /home/tim/.local/share/mise/installs/devutil/0.14.0/bin/devutil tunnel --name "k8s-dev-aws-lz-dsh"
}
function kadmin() {
  /home/tim/.local/share/mise/installs/devutil/0.14.0/bin/devutil kupdate --dev --name $(kubectl config current-context)
}
function kconnect() {
  kubie ctx $(yq -r '. | keys[] ' /home/tim/workspace/dsh-k8s-work/scripts/clusters.yaml | fzf)
}

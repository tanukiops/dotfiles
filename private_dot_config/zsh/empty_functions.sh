function tunnel() {
  devutil tunnel --name "dev-aws-lz-dsh"
}
function kadmin() {
  devutil kupdate --dev --name $(kubectl config current-context)
}
function kconnect() {
  kubie ctx $(yq -r '. | keys[] ' /home/tim/workspace/dsh-k8s-work/scripts/clusters.yaml | fzf)
}

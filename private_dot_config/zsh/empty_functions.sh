function tunnel() {
  devutil tunnel --name "dev-aws-lz-dsh"
}
function kadmin() {
  devutil kupdate --dev --name $(kubectl config current-context)
}
function kconnect() {
  kubie ctx $(yq -r '. | keys[] ' /home/tim/workspace/dsh-k8s-work/scripts/clusters.yaml | fzf)
}

function platform-api() {

  NS=${NS:-dsh}
  SVC=${SVC:-platform-api-rest}
  PORTS=${PORTS:-9000:9000}

  trap 'kill 0' EXIT INT TERM # take the kubectl child down with us

  while true; do
    kubectl -n "$NS" port-forward "svc/$SVC" $PORTS
    echo "$(date +%T) port-forward exited ($?), restarting in 1s" >&2
    sleep 1
  done
}

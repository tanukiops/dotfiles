function tunnel() {
  if [ -z "$1" ]; then
    name=dev-aws-dsh
  elif [[ "$1" == "dev" ]]; then
    name=k8s-dev-aws-dsh
  elif [[ "$1" == "lz" ]]; then
    name=k8s-dev-aws-lz-dsh
  elif [[ "$1" == "nplz" ]]; then
    name=np-aws-lz-dsh
  elif [[ "$1" == "rvplz" ]]; then
    name=rvp-aws-lz-dsh
  elif [[ "$1" == "rvp" ]]; then
    name=rvp-aws-dsh
  elif [[ "$1" == "test" ]]; then
    name=test-aws-dsh
  elif [[ "$1" == "azure" ]]; then
    name=dev-azure-dsh
  elif [[ "$1" == "poc" ]]; then
    name=poc-aws-dsh
  elif [[ "$1" == "prod" ]]; then
    name=prod-aws-dsh
  elif [[ "$1" == "prodlz" ]]; then
    name=prod-aws-lz-dsh
  elif [[ "$1" == "laas" ]]; then
    name=dev-aws-lz-laas
  elif [[ "$1" == "prod2" ]]; then
    name=prod-2-aws-lz-dsh
  elif [[ "$1" == "dev2" ]]; then
    name=dev-2-aws-lz-dsh
  elif [[ "$1" == "prodcp" ]]; then
    name=prod-aws-cp
  elif [[ "$1" == "devcp" ]]; then
    name=dev-aws-cp
  elif [[ "$1" == "devcplz" ]]; then
    name=dev-aws-lz-cp
  else
    name="$1"
  fi
  ~/workspace/dsh-k8s-work/scripts/kubectx-tunnel.sh --name $name
}

export ZSH_THEME="robbyrussell"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.krew/bin:$PATH
export GOPRIVATE=github.com/Klarrio/*
export EDITOR=nvim
export ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible/vault-password
export HARBOR_PASSWORD=$(pass dsh/harbor)

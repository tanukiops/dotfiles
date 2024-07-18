export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
##set theme (I think starship will override this)
ZSH_THEME="robbyrussell"
ZSH_TMUX_AUTOSTART=true
plugins=(git kubectl fzf tmux)
#add auto completions to function path, put all autocompletions in this folder.
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
#load plugin manager
source $ZSH/oh-my-zsh.sh
#set PATH's
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/go@1.21/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

#set custom directory's 

export UA="$HOME/repos/gitlab.uantwerpen.be"
export KUBEWS="$UA/systemen/kubernetes"
export GITOPS="$KUBEWS/clusters"
export HOMELAB="$HOME/repos/github.com/tanukiops"
#cd aliases
alias cdgithub="cd $HOMELAB"
alias cdgitops="cd $GITOPS"
alias cdkube="cd $KUBEWS"
alias cdwork="cd $UA"
alias cdansible="cd $UA/systemen/ansible/"
alias cddot="cd ~/.dotfiles"
#script aliases
#terraform
alias cfapply="tofu apply -var-file .tfvars"
alias cfplan="tofu plan -var-file .tfvars"
alias tf="sudo tofu"
#nvim aliases
alias v="nvim"
alias vtea="cd $GITOPS/tstecampus/tstecampus-applications/ && nvim"
alias vtec="cd $GITOPS/tstecampus/tstecampus-core/ && nvim"
alias vtua="cd $GITOPS/tstuasys/tstuasys-applications/ && nvim"
alias vtuc="cd $GITOPS/tstuasys/tstuasys-core/ && nvim"
alias vua="cd $GITOPS/uasys-apps/uasys-apps-applications/ && nvim"
alias vuc="cd $GITOPS/uasys-apps/uasys-apps-core/ && nvim"
### Put functions here

kube_sh(){
	NS=$(kubectl get ns | fzf | awk '{print $1}')
	POD=$(kubectl get pod -n $NS | fzf | awk '{print $1}')
	kubectl -n $NS exec -it $POD -- /bin/sh
}


# load tmuxifier
eval "$(tmuxifier init -)"
# load starship
eval "$(starship init zsh)"

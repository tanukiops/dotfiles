alias vim=nvim
alias tmuxconf="chezmoi edit ~/.config/tmux"
alias zshconf="chezmoi edit ~/.config/zsh"
alias python="python3"
# Get resources
alias fghr='_flux_get helmreleases'
alias fgks='_flux_get kustomizations'
alias fgsa='_flux_get_sources all'
alias fgsb='_flux_get_sources bucket'
alias fgsc='_flux_get_sources chart'
alias fgsg='_flux_get_sources git'
alias fgsh='_flux_get_sources helm'
alias fgso='_flux_get_sources oci'
# Not ready
alias fghre="fghr | awk '$_not_ready_pattern_hr'"
alias fgkse="fgks | awk '$_not_ready_pattern'"
alias fgsbe="fgsb | awk '$_not_ready_pattern'"
alias fgsce="fgsc | awk '$_not_ready_pattern'"
alias fgsge="fgsg | awk '$_not_ready_pattern'"
alias fgshe="fgsh | awk '$_not_ready_pattern'"
alias fgsoe="fgso | awk '$_not_ready_pattern'"
# Suspended
alias fghrs="fghr | awk '$_suspended_pattern_hr'"
alias fgkss="fgks | awk '$_suspended_pattern'"
alias fgsbs="fgsb | awk '$_suspended_pattern'"
alias fgscs="fgsc | awk '$_suspended_pattern'"
alias fgsgs="fgsg | awk '$_suspended_pattern'"
alias fgshs="fgsh | awk '$_suspended_pattern'"
alias fgsos="fgso | awk '$_suspended_pattern'"
# Not ready + watch
alias fghrew="while true; do clear; fghre; sleep 2; done"
alias fgksew="while true; do clear; fgkse; sleep 2; done"

# Describe resources
alias fdhr='_flux_describe helmreleases'
alias fdks='kubectl describe -n flux-system kustomizations'
alias fdsb='kubectl describe -n flux-system buckets'
alias fdsc='kubectl describe -n flux-system helmcharts'
alias fdsg='kubectl describe -n flux-system gitrepositories'
alias fdsh='kubectl describe -n flux-system helmrepositories'
alias fdso='kubectl describe -n flux-system ocirepositories'

alias fdhra='_flux_describe helmreleases'
alias fdksa='_flux_describe kustomizations'
alias fdsba='_flux_describe buckets'
alias fdsca='_flux_describe helmcharts'
alias fdsga='_flux_describe gitrepositories'
alias fdsha='_flux_describe helmrepositories'
alias fdsoa='_flux_describe ocirepositories'

# Edit resources
alias fehr='kubectl edit -n flux-system helmreleases'
alias feks='kubectl edit -n flux-system kustomizations'
alias fesb='kubectl edit -n flux-system buckets'
alias fesc='kubectl edit -n flux-system helmcharts'
alias fesg='kubectl edit -n flux-system gitrepositories'
alias fesh='kubectl edit -n flux-system helmrepositories'
alias feso='kubectl edit -n flux-system ocirepositories'

# Suspend
alias fshr='flux suspend helmrelease'
alias fsks='flux suspend kustomization'
alias fssb='flux suspend source bucket'
alias fssc='flux suspend source chart'
alias fssg='flux suspend source git'
alias fssh='flux suspend source helm'
alias fsso='flux suspend source oci'

# Resume
alias frhr='flux resume helmrelease'
alias frks='flux resume kustomization'
alias frsb='flux resume source bucket'
alias frsc='flux resume source chart'
alias frsg='flux resume source git'
alias frsh='flux resume source helm'
alias frso='flux resume source oci'

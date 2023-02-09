# Aliases
alias vim="nvim"
alias k8s="kubectl"
alias kx="kubectx"
alias redis="docker run --rm -i -p 6379:6379 redis:6.2.4"
alias selenium-chrome="docker run -p 4444:4444 --shm-size="2g" selenium/standalone-chrome:4.0.0-rc-2-prerelease-20210906"
alias myzsh="vim $ZSH_CUSTOM/my.zsh"
alias zshrc="vim ~/.zshrc"
alias dockerps="docker ps --format '{{.Names}}: {{.Ports}}'"

# Directories
dev=~/development/
nl=~/development/northern-light/

# Aws
export AWS_PROFILE=AdministratorAccess-eks

# Paths
export GOPATH=/Users/alagodich/go
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/Users/alagodich/Library/Python/3.11/bin:$PATH"
export PATH="/Users/alagodich/.poetry/bin:$PATH"

# Kubernetes
export KUBECONFIG_PATH=~/development/kubernetes/cluster-config
export KUBECONFIG=~/.kube/config
export KUBECONFIG="$KUBECONFIG:$KUBECONFIG_PATH/dev.yaml"
export KUBECONFIG="$KUBECONFIG:$KUBECONFIG_PATH/rancher-infra.yaml"
export KUBECONFIG="$KUBECONFIG:$KUBECONFIG_PATH/production-cloud-2.yaml"
export KUBECONFIG="$KUBECONFIG:$KUBECONFIG_PATH/us-east-1-spdev-eks.yaml"
export KUBECONFIG="$KUBECONFIG:$KUBECONFIG_PATH/signup-gke.yaml"

typeset -U PATH

# FZF
export FZF_DEFAULT_COMMAND='find .'
export FZF_DEFAULT_OPTS='--layout=reverse --border'
alias fzv='vim $(fzf)'

# Enable kubernetes autocomplete
source <(kubectl completion zsh)

# Aliases
alias vim="nvim"
alias k8s="kubectl"
alias kx="kubectx"
alias redis="docker run --rm -i -p 6379:6379 redis:6.2.4"
alias selenium-chrome="docker run -p 4444:4444 --shm-size="2g" selenium/standalone-chrome:4.0.0-rc-2-prerelease-20210906"
alias chromedriver="/Users/alagodich/development/tools/chromedriver/chromedriver --url-base=/wd/hub --port=4444"
alias myzsh="vim $ZSH_CUSTOM/my.zsh"
alias zshrc="vim ~/.zshrc"
alias dockerps="docker ps --format '{{.Names}}: {{.Ports}}'"
alias kill-evicted="kubectl get pods | grep Evicted | awk '{print $1}' | xargs kubectl delete pod"

# NL k8s commands
export K8S_CONTEXT_LOCAL="docker-desktop"
export K8S_LOCAL_RELEASE_NAME="sp"
export HELM_RELEASE_NAME_LOCAL="sp"

local-mysql() {
    ## local-mysql: Connect to local release mysql
    kubectx $K8S_CONTEXT_LOCAL && ./docker/partials/mysql-shell.sh -n $K8S_LOCAL_RELEASE_NAME
}

# Directories
dev=~/development/
nl=~/development/northernlight/

# Aws
export AWS_PROFILE=AdministratorAccess-eks

# Paths
export GOPATH=/Users/alagodich/go
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"
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

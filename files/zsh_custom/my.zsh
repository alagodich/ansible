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

# NL k8s commands
export K8S_CONTEXT_LOCAL="docker-desktop"
export K8S_LOCAL_RELEASE_NAME="sp"

local-release() {
    ## local-release: Delete local sp release and create it again
    kubectx $K8S_CONTEXT_LOCAL && helm uninstall $K8S_LOCAL_RELEASE_NAME $^ 2>/dev/null ; true
    sleep 2
    helm upgrade --install $K8S_LOCAL_RELEASE_NAME docker/helm --values docker/helm/values.local.yaml
}

local-apply() {
    ## local-apply: Apply local sp release changes
    kubectx $K8S_CONTEXT_LOCAL && helm upgrade --install $K8S_LOCAL_RELEASE_NAME docker/helm --values docker/helm/values.local.yaml
}

local-shell() {
    ## local-shell: Connect to the local sp release portal container
    kubectx $K8S_CONTEXT_LOCAL && ./docker/partials/shell.sh -n $K8S_LOCAL_RELEASE_NAME
}

local-logs() {
    ## local-logs: Stream local sp release portal container logs
    kubectx $K8S_CONTEXT_LOCAL && ./docker/partials/logs.sh -n $K8S_LOCAL_RELEASE_NAME
}

local-logs-init() {
    ## local-logs-init: Stream local sp release init container logs
    kubectx $K8S_CONTEXT_LOCAL && ./docker/partials/logs.sh -n $K8S_LOCAL_RELEASE_NAME -c init
}

local-logs-codeception() {
    ## local-logs-codeception: Stream local sp release codeception container logs
    kubectx $K8S_CONTEXT_LOCAL && ./docker/partials/codeception-logs.sh -n $K8S_LOCAL_RELEASE_NAME
}

local-mysql() {
    ## local-mysql: Connect to local release mysql
    kubectx $K8S_CONTEXT_LOCAL && ./docker/partials/mysql-shell.sh -n $K8S_LOCAL_RELEASE_NAME
}

# Directories
dev=~/development/
nl=~/development/northern-light/

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

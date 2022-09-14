# Aliases
alias k8s="kubectl"
alias redis="docker run --rm -i -p 6379:6379 redis:6.2.4"
alias selenium-chrome="docker run -p 4444:4444 --shm-size="2g" selenium/standalone-chrome:4.0.0-rc-2-prerelease-20210906"
alias myzsh="vim $ZSH_CUSTOM/my.zsh"
alias zshrc="vim ~/.zshrc"
alias dockerps="docker ps --format '{{.Names}}: {{.Ports}}'"

# Directories
dev=/Volumes/case-sensitive/development/
nl=/Volumes/case-sensitive/development/northern-light/

# Variables
export KUBECONFIG_PATH=/Volumes/case-sensitive/development/kubernetes/cluster-config
export KUBECONFIG=~/.kube/config:$KUBECONFIG_PATH/dev.yaml:$KUBECONFIG_PATH/rancher-infra.yaml:$KUBECONFIG_PATH/production-cloud-2.yaml:$KUBECONFIG_PATH/sp-trf-eks.yaml
export AWS_PROFILE=AdministratorAccess-382429600368

# Paths
export GOPATH=/Users/alagodich/go
export PATH="/usr/local/opt/php@7.4/bin:$GOPATH/bin:$PATH"
export PATH="/Users/alagodich/Library/Python/3.10/bin:$PATH"
typeset -U PATH


# Enable kubernetes autocomplete
# [[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

#source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
#PS1='$(kube_ps1)'$PS1
#PROMPT='$(kube_ps1)'$PROMPT

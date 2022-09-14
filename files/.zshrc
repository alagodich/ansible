# Path to your oh-my-zsh installation.
export ZSH="/Users/alagodich/.oh-my-zsh"

# It expects a file $ZSH_CUSTOM/themes/headline/headline.zsh-theme
# And probably will look in $ZSH by the same path after
# ZSH_THEME="headline"

# Installation https://typewritten.dev/#/installation?id=oh-my-zsh
# Steps with oh-my-zsh:
# Git clone somewhere, then from root:
# cp typewritten.zsh files/zsh_custom/themes/typewritten.zsh-theme
# cp async.zsh files/zsh_custom/themes/async
ZSH_THEME="typewritten"

# To try others
# ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# Use echo $RANDOM_THEME to get current theme
# ZSH_THEME_RANDOM_CANDIDATES=( "headline" "af-magic" "arrow" "bureau" "candy" "crcandy" "dstufft" "frontcube" "jtriley" "nicoulaj" "passion" "typewritten")

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Kubernetes autocomplete
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)


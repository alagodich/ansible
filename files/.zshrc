# Enable fzf, it will be also done automatically when installing fzf with git
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Brew completions
# https://docs.brew.sh/Shell-Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Path to your oh-my-zsh installation.
export ZSH="/Users/alagodich/.oh-my-zsh"

# Installation https://typewritten.dev/#/installation?id=oh-my-zsh
# Steps with oh-my-zsh:
# Git clone somewhere, then from root:
# cp typewritten.zsh files/zsh_custom/themes/typewritten.zsh-theme
# cp async.zsh files/zsh_custom/themes/async.zsh
ZSH_THEME="typewritten"
# More color schemes https://typewritten.dev/#/prompt_color_customization?id=example-1-dracula
export TYPEWRITTEN_COLOR_MAPPINGS="primary:#9580FF;secondary:#8AFF80;accent:#FFFF80;info_negative:#FF80BF;info_positive:#8AFF80;info_neutral_1:#FF9580;info_neutral_2:#FFFF80;info_special:#80FFEA"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
export TYPEWRITTEN_CURSOR="terminal"
export TYPEWRITTEN_PROMPT_LAYOUT="pure"

# To try others
# ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# Use echo $RANDOM_THEME to get current theme
# ZSH_THEME_RANDOM_CANDIDATES=( "headline" "af-magic" "arrow" "bureau" "candy" "crcandy" "dstufft" "frontcube" "jtriley" "nicoulaj" "passion" "typewritten")

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
# PS1='$(kube_ps1)'$PS1

autoload -U +X bashcompinit && bashcompinit

# Kubernetes autocomplete
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alagodich/development/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alagodich/development/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alagodich/development/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alagodich/development/tools/google-cloud-sdk/completion.zsh.inc'; fi

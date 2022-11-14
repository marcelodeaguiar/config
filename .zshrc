# Exports ======================================
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/marcelo.aguiar/.oh-my-zsh"

# Kitty config files
export KITTY_CONFIG_DIRECTORY="$HOME/config/kitty"

# Bazel tools
export PATH=$PATH:$HOME/bin

# Make x86 brew the default
export PATH="/usr/local/bin:$PATH"

# OH-MY-ZSH ===================================
ZSH_DISABLE_COMPFIX="true"
ZSH_THEME="agnoster"
RPROMPT='[%D %*]'
DISABLE_UPDATE_PROMPT="true"

plugins=(
    #   git
)

source $ZSH/oh-my-zsh.sh

# FZF  ========================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# RBENV =======================================
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Alias party
function encrypt() { openssl enc -aes-256-cbc -salt -in "$1" -out "$2" }
function decrypt() { openssl enc -d -aes-256-cbc -in "$1" -out "$2" }

alias netskope-off="sudo launchctl unload /Library/LaunchDaemons/com.netskope.client.auxsvc.plist && sudo chmod -x /Applications/Netskope\ Client.app/ && sudo killall Netskope\ Client"
alias netskope-on="sudo launchctl load /Library/LaunchDaemons/com.netskope.client.auxsvc.plist && sudo chmod +x /Applications/Netskope\ Client.app/ && open -a /Applications/Netskope\ Client.app"

# Removes prompt ugliness
prompt_context(){}


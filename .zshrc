# Disable some security checks
ZSH_DISABLE_COMPFIX="true"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marcelo.aguiar/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# bitrise tools
export HOMEBREW_PACKAGES='swiftgen swiftlint xcodegen sourcery'

# Bazel tools
export PATH=$PATH:$HOME/bin

# Removes prompt ugliness
prompt_context(){}

# Calls fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Init rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Alias party
alias ctags="/usr/local/bin/ctags"
alias bazelgen="make fastgenerate"
alias bazelclean="make bazel_clean"

# Set vi mode
#set -o vi

# Show vim mode in prompt
#vim_ins_mode="%{$fg[cyan]%}[INS]%{$reset_color%}"
#vim_cmd_mode="%{$fg[green]%}[CMD]%{$reset_color%}"
#vim_mode=$vim_ins_mode
#
#function zle-keymap-select {
#  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
#  zle reset-prompt
#}
#zle -N zle-keymap-select
#
#function zle-line-finish {
#  vim_mode=$vim_ins_mode
#}
#zle -N zle-line-finish
#
## Fix a bug when you C-c in CMD mode and you'd be prompted with CMD mode indicator, while in fact you would be in INS mode
## Fixed by catching SIGINT (C-c), set vim_mode to INS and then repropagate the SIGINT, so if anything else depends on it, we will not break it
## Thanks Ron! (see comments)
#function TRAPINT() {
#  vim_mode=$vim_ins_mode
#  return $(( 128 + $1 ))
#}
#RPROMPT='${vim_mode}'

function encrypt() { openssl enc -aes-256-cbc -salt -in "$1" -out "$2" }
function decrypt() { openssl enc -d -aes-256-cbc -in "$1" -out "$2" }

export PATH="$PATH:$HOME/bin"

# Make x86 brew the default
export PATH="/usr/local/bin:$PATH"

alias xvim="open -a /Applications/VimXcode13.app"
alias netskope-off="sudo launchctl unload /Library/LaunchDaemons/com.netskope.client.auxsvc.plist && sudo chmod -x /Applications/Netskope\ Client.app/ && sudo killall Netskope\ Client"
alias netskope-on="sudo launchctl load /Library/LaunchDaemons/com.netskope.client.auxsvc.plist && sudo chmod +x /Applications/Netskope\ Client.app/ && open -a /Applications/Netskope\ Client.app"

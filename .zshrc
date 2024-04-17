# Exports ======================================
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/marcelo.aguiar/.oh-my-zsh"

# Kitty config files
export KITTY_CONFIG_DIRECTORY="$HOME/config/kitty"

# Bazel tools
export PATH=$PATH:$HOME/bin

# Go bin
export PATH=$PATH:$HOME/go/bin

# Make x86 brew the default
export PATH="/usr/local/bin:$PATH"

# Python poetry
export PATH="/Users/marcelo.aguiar/.local/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"

# Java (make it first in path to skip MacOS default version)
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# OH-MY-ZSH ===================================
ZSH_DISABLE_COMPFIX="true"
ZSH_THEME="powerlevel10k/powerlevel10k"
RPROMPT='[%D %*]'
DISABLE_UPDATE_PROMPT="true"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6c71c4,bg=0"
plugins=(
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Bazel completion
source ~/.bazel/bin/bazel-complete.bash

# FZF  ========================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# RBENV =======================================
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# NVM setup
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PyEnv setup
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Setup Bazel
export PATH="$PATH:$HOME/bin"

alias netskope-off="sudo launchctl unload /Library/LaunchDaemons/com.netskope.client.auxsvc.plist && sudo chmod -x /Applications/Netskope\ Client.app/ && sudo killall Netskope\ Client && pgrep netskope | xargs sudo kill -9"
alias netskope-on="sudo launchctl load /Library/LaunchDaemons/com.netskope.client.auxsvc.plist && sudo chmod +x /Applications/Netskope\ Client.app/ && open -a /Applications/Netskope\ Client.app"

alias v="vim"
alias c="code"
alias k="kubectl"

#fzf-tab-completion
#source fzf-tab-completion/zsh/fzf-zsh-completion.sh
#bindkey '^I' fzf_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/config/.p10k.zsh ]] || source ~/config/.p10k.zsh

# Startup TMUX
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux new-session -A -s main
fi


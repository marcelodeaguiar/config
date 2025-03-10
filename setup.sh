# Stop on failure
#set -e

# Points kitty config
launchctl setenv KITTY_CONFIG_DIRECTORY $HOME/.config/kitty/

# Install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/powerline/fonts.git
    ./fonts/install.sh
    rm -rf fonts
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    brew update
fi

# install brew apps
brew bundle --file=~/config/setup-brewfile

# Fix config files
convertToLink () {
	local home=~
	local config="$home/config"
	local p="$home/$1"

	[[ -f "$p" || -L "$p" ]] && rm "$p"
	ln -s "$config/$1" $p
}

convertToLink ".vimrc" 
convertToLink ".zshrc" 
convertToLink ".xvimrc" 
convertToLink ".tmux.conf" 

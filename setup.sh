# Stop on failure
#set -e

# Install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/powerline/fonts.git
    ./fonts/install.sh
    rm -rf fonts
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

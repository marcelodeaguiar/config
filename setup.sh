# Stop on failure
set -e

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# install brew apps
brew bundle --file=- <<-EOS
brew rbenv ruby-build
brew keepassxc
brew ctags
brew gh
brew git-lfs
brew jq
brew loc
brew tmux
brew vim
EOS


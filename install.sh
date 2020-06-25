#!/bin/sh

echo "Setting up your Mac…"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Composer
# curl -sS https://getcomposer.org/installer | php
# mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/lumen-installer tightenco/jigsaw

# Create symlinks
# Git
rm ~/.gitignore_global
ln -s ~/Google\ Drive/AppSync/_Symlinks/git/dotGitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Shell
rm ~/.zshrc
ln -s ~/Google\ Drive/AppSync/_Symlinks/shell/dotZshrc ~/.zshrc
rm -r .oh-my-zsh
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotOh-my-zsh .oh-my-zsh

# Hyper.js
rm -r ~/.hyper.js
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotHyper.js ~/.hyper.js
rm -r ~/.hyper_plugins
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotHyper_plugins ~/.hyper_plugins

# Vim
rm -r ~/.vim
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotVim ~/.vim
rm -r ~/.viminfo
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotViminfo ~/.viminfo
rm -r ~/.vimrc
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotVimrc ~/.vimrc

# Set OS X preferences
# We will run this last because this will reload the shell
source .macOS

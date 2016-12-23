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
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/lumen-installer tightenco/jigsaw

# Create symlinks
ln -s ~/Dropbox/Code ~/Code

rm ~/.zshrc
ln -s ~/Dropbox/AppSync/_Symlinks/Shell/zshrc ~/.zshrc

rm -r .oh-my-zsh
ln -s ~/Dropbox/AppSync/_Symlinks/dotOh-my-zsh .oh-my-zsh

rm -r ~/.atom
ln -s ~/Dropbox/AppSync/_Symlinks/dotAtom ~/.atom

rm ~/.gitignore_global
ln -s ~/Dropbox/AppSync/_Symlinks/git/gitignore_global ~/.gitignore_global

rm -r ~/.hyper.js
ln -s ~/Dropbox/AppSync/_Symlinks/dotHyper.js
rm -r ~/.hyper_plugin
ln -s ~/Dropbox/AppSync/_Symlinks/dotHyper_plugins

rm -r ~/.homestead
ln -s ~/Dropbox/AppSync/_Symlinks/dotHomestead ~/.homestead

# Set OS X preferences
# We will run this last because this will reload the shell
source .macOS

#!/bin/sh

echo "Setting up your Mac…"

# Make ZSH the default shell environment
# chsh -s $(which zsh)

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/tdb/.zprofile
  eval $(/opt/homebrew/bin/brew shellenv)
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

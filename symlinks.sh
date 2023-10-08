# Set up symlinks for settings
# Git
rm ~/.gitignore_global
ln -s ~/Library/CloudStorage/GoogleDrive-tomdebruin@gmail.com/My\ Drive/AppSync/_Symlinks/git/dotGitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Shell
rm ~/.zshrc
ln -s ~/Google\ Drive/AppSync/_Symlinks/shell/dotZshrc ~/.zshrc
rm -r ~/.oh-my-zsh
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotOh-my-zsh ~/.oh-my-zsh

# Hyper.js
rm -r ~/.hyper.js
ln -s ~/Google\ Drive/AppSync/_Symlinks/dotHyper.js ~/.hyper.js
rm -r ~/.hyper_plugins
ln -s ~/Library/CloudStorage/GoogleDrive-tomdebruin@gmail.com/My\ Drive/AppSync/_Symlinks/dotHyper_plugins ~/.hyper_plugins

# Karabiner
rm -r ~/.config/karabiner
ln -s ~/Library/CloudStorage/GoogleDrive-tomdebruin@gmail.com/My\ Drive/AppSync/_Symlinks/dotKarabiner ~/.config/karabiner

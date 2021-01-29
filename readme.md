# TdB's Dotfiles

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preferred setup of OS X is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

Read the blog post: https://driesvints.com/blog/getting-started-with-dotfiles

## A Fresh OS X Setup

Follow these install instructions to setup a new Mac.

1. Install password manager from App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install OS X Command Line Tools by running `xcode-select --install`
4. [Generate a new public and private SSH key](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and add them to Github
5. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
6. Clone this package into `~/Codes/dotfiles`
7. Run `sh macOS.sh`
8. Run `sh install.sh`
9. Sync `AppSync` folder from Google Drive
10. Run `sh symlinks.sh`
11. [Install the remaining apps and do some manual set up](./manual.md)
12. Restart your computer to finalise the process

Your Mac is now ready to use!

## Your Own Dotfiles

This was forked from [Dries Vint's dotfile](https://github.com/driesvints/dotfiles/) who did all the initial hard work. If you want something like this read his [readme](https://github.com/driesvints/dotfiles/blob/master/readme.md).

A great place for loads of commands you can use [github.com/herrbischoff/awesome-osx-command-line](https://github.com/herrbischoff/awesome-osx-command-line)

## License

The MIT License. Please see [the license file](license.md) for more information.

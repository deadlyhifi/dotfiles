# TdB's Dotfiles

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preferred setup of OS X is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

Read the blog post: https://driesvints.com/blog/getting-started-with-dotfiles

## A Fresh OS X Setup

Follow these install instructions to setup a new Mac.

1. Update OS X to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install OS X Command Line Tools by running `xcode-select --install`
4. Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this package, navigate to it, and run `sh install.sh` to start the installation
6. [Install the remaining apps and do some manual set up](./manual.md)
7. Restart your computer to finalise the process

Your Mac is now ready to use!

## Your Own Dotfiles

This was forked from [Dries Vint's dotfile](https://github.com/driesvints/dotfiles/) who did all the initial hard work. If you want something like this read his [readme](https://github.com/driesvints/dotfiles/blob/master/readme.md).

A great place for loads of commands you can use [github.com/herrbischoff/awesome-osx-command-line](https://github.com/herrbischoff/awesome-osx-command-line)

## License

The MIT License. Please see [the license file](license.md) for more information.

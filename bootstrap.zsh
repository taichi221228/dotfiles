#!/usr/bin/env zsh

cd $(dirname $0)

set -o ignoreeof

zsh ./zsh/init.zsh
zsh ./brew/init.zsh
zsh ./duti/init.zsh
zsh ./emacs/init.zsh
zsh ./clam-av/init.zsh
zsh ./dict/init.zsh
zsh ./karabiner/init.zsh
zsh ./ssh/init.zsh

defaults write -g ApplePressAndHoldEnabled -bool false

sudo find / -name ".localized" -or -name ".DS_Store" -depth -exec rm {} \; 2>/dev/null

source "$HOME/.zshrc" && fig source

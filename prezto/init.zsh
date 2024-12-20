#!/usr/bin/env zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/*(.N); do
  [[ $rcfile == *(README.md|zpreztorc|zshrc) ]] && continue
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -s "$F/general/prezto/.zpreztorc" "$HOME/.zpreztorc"

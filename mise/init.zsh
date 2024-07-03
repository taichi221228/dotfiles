#!/usr/bin/env zsh

mkdir -p "$HOME/.config/mise"

ln -s "$F/general/mise/config.toml" "$HOME/.config/mise/config.toml"

mise install

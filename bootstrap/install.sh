#!/usr/bin/env bash
set -euo pipefail

sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)

mkdir -p ~/.config/home-manager
ln -sfn ~/dotfiles/flake.* ~/.config/home-manager
nix run github:nix-community/home-manager -- switch

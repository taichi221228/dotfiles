#!/usr/bin/env bash
set -euo pipefail

tmpdir=$(mktemp -d)
installer="$tmpdir/nix-installer.sh"

cleanup() {
	rm -rf "$tmpdir"
}

trap cleanup EXIT

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix -o "$installer"
chmod +x "$installer"
"$installer" install

mkdir -p ~/.config/home-manager
ln -sfn ~/dotfiles/flake.* ~/.config/home-manager
nix run github:nix-community/home-manager -- switch

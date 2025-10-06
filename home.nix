{ config, pkgs, ... }:
{
  home = {
    username = "taichi221228";
    homeDirectory = /Users/taichi221228;
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  imports = [
    ./core/utils.nix
    ./app/git.nix
    ./app/jujutsu.nix
    ./app/raycast.nix
    ./appearance/font.nix
    ./languages/javascript.nix
    ./languages/nix.nix
    ./languages/shell.nix
    ./languages/toml.nix
    ./terminal/alacritty.nix
    ./terminal/misc.nix
    ./terminal/starship.nix
    ./terminal/zellij.nix
    ./terminal/zsh.nix
  ];
}

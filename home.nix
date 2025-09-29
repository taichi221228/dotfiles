{
  config,
  pkgs,
  ...
}:
{
  home = {
    homeDirectory = /Users/taichi221228;
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;

  imports = [
    ./app/git.nix
    ./app/jujutsu.nix
    ./app/raycast.nix
    ./languages/nix.nix
    ./languages/sh.nix
    ./languages/javascript/bun.nix
    ./shell/alacritty.nix
  ];
}

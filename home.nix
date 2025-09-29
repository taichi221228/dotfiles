{
  config,
  pkgs,
  ...
}:
{
  home = {
    username = "taichi221228";
    homeDirectory = /Users/taichi221228;
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  imports = [
    ./core/utils.nix
    ./appearance/font.nix
    ./app/git.nix
    ./app/jujutsu.nix
    ./app/raycast.nix
    ./languages/javascript.nix
    ./languages/nix.nix
    ./languages/shell.nix
    ./shell/alacritty.nix
    ./shell/zsh.nix
  ];
}

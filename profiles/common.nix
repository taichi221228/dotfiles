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
}

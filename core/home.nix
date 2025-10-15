{
  config,
  pkgs,
  inputs,
  ...
}:
{
  home = {
    username = "taichi221228";
    homeDirectory = /Users/taichi221228;
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  imports = [ inputs.chaotic-cx.homeManagerModules.default ];
  # Use the Nix build provided by the Chaotic-Nyx module
  nix.package = pkgs.nix;
}

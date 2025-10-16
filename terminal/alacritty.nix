{ pkgs, ... }:
{
  home.packages = [ pkgs.alacritty_git ];
  xdg.configFile."alacritty.toml".source = ./alacritty.toml;
}

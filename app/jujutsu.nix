{ pkgs, ... }:
{
  home.packages = [
    pkgs.jujutsu_git
    pkgs.jjui
  ];
  xdg.configFile."jj/config.toml".source = ./jujutsu/config.toml;
}

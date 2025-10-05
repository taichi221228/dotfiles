{ pkgs, ... }:
{
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        name = "taichi221228";
        email = "taichi221228@icloud.com";
      };
    };
  };
  home.packages = [ pkgs.jjui ];
}

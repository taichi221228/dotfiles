{ pkgs, lib, ... }:
{
  nixpkgs.config.allowUnfreePredicate = pkg: lib.getName pkg == "raycast";
  home.packages = [ pkgs.raycast ];
}

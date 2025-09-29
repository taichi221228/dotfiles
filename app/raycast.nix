{ lib, pkgs, ... }:
{
  core.utils.allowUnfreePackages = [ "raycast" ];
  home.packages = [ pkgs.raycast ];
}

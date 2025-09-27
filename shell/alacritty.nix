{ vars, ... }:
let
  inherit (vars) username;
in
{
  programs.alacritty = {
    enable = true;
    settings = {
      terminal.shell = "/Users/${username}/.nix-profile/bin/nu";
    };
  };
}

{
  config,
  pkgs,
  vars,
  ...
}:
let
  inherit (vars) username;
in
{
  home = {
    inherit username;
    homeDirectory = /Users/${username};
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
}

{ vars, ... }:
let
  inherit (vars) username email;
in
{
  programs.git = {
    enable = true;
    ignores = [ ".jj" ];
  };
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        name = username;
        inherit email;
      };
    };
  };
}

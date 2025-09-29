{ lib, config, ... }:
{
  options = {
    core.utils = {
      allowUnfreePackages = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ ];
        description = "List of unfree package names that should be allowed.";
      };
    };
  };
  config = {
    nixpkgs.config.allowUnfreePredicate =
      pkg: builtins.elem (lib.getName pkg) config.core.utils.allowUnfreePackages;
  };
}

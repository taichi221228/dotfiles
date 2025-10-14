{
  description = "Home Manager configuration of Taichi Fukuda";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      nixpkgs,
      home-manager,
      ...
    }:
    {
      homeConfigurations.taichi221228 = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "aarch64-darwin";
        };
        modules = [
          ./core/home.nix
          ./core/utils.nix
          ./app/emacs.nix
          ./app/git.nix
          ./app/jujutsu.nix
          ./app/raycast.nix
          ./appearance/font.nix
          ./languages/javascript.nix
          ./languages/kdl.nix
          ./languages/nix.nix
          ./languages/shell.nix
          ./languages/toml.nix
          ./terminal/alacritty.nix
          ./terminal/misc.nix
          ./terminal/starship.nix
          ./terminal/zellij.nix
          ./terminal/zsh.nix
        ];
      };
    };
}

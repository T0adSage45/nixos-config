{
  description = "T0adSage45's nixos config for nerds and anti-mouse guys";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprmag.url = "github:SIMULATAN/hyprmag";
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
    hyprpicker = {
      url = "github:hyprwm/hyprpicker";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
    };
    nix-colors = {
      url = "github:Misterio77/nix-colors";
    };
    nvim-conf = {
      url = "github:T0adSage45/nvim";
      flake = false;
    };
    xremap = {
      url = "github:xremap/nix-flake";
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    vicinae.url = "github:vicinaehq/vicinae";

    superfile.url = "github:yorukot/superfile";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs =
    {
      self,
      nixpkgs,
      ...
    }@inputs:
    let
      user = "toadsage";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        laptop = lib.nixosSystem {
          inherit system;
          specialArgs = {
            host = "laptop";
            inherit
              self
              inputs
              user
              ;
          };
          modules = [
            ./hosts/laptop
          ];
        };
        server = lib.nixosSystem {
          inherit system;
          specialArgs = {
            host = "server";
            inherit
              self
              inputs
              user
              ;
          };
          modules = [
            ./hosts/server
          ];
        };
      };
    };
}

{
  description = "T0adSage45's nixos config for nerds and anti-mouse guys";

  outputs =
    {
      self,
      nixpkgs,
      deploy-rs,
      ...
    }@inputs:
    let
      inherit (self) outputs;
      inherit (inputs.nixpkgs.lib) nixosSystem;
      # inherit (inputs.nix-on-droid.lib) nixOnDroidConf;
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
      ];
      user = "toadsage";

      mkNixOSConfig = host: {
        system = "x86_64-linux";
        specialArgs = {
          host = "${host}";
          inherit
            inputs
            outputs
            user
            ;
        };
        modules = [ ./hosts/${host} ];
      };

      mkNixOSNode = host: {
        inherit host;
        profiles.system = {
          user = "root";
          path = deploy-rs.lib.x86_64-linux.activate.nixos self.nixosConfigurations.${host};
        };
      };

    in
    {
      packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

      overlays = import ./overlays { inherit inputs; };

      nixosConfigurations = {
        laptop = nixosSystem (mkNixOSConfig "laptop");
      };

      deploy = {
        nodes = {
          laptop = mkNixOSNode "laptop";
        };
      };
      checks = builtins.mapAttrs (system: deploylib: deploylib.deployChecks self.deploy) deploy-rs.lib;

    };
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprmag.url = "github:SIMULATAN/hyprmag";
    nur.url = "github:nix-community/NUR";
    alejandra.url = "github:kamadorueda/alejandra/3.1.0";
    zig.url = "github:mitchellh/zig-overlay";
    nvf.url = "github:notashelf/nvf";
    nix-colors.url = "github:Misterio77/nix-colors";
    xremap.url = "github:xremap/nix-flake";
    deploy-rs.url = "github:serokell/deploy-rs";
    sops-nix.url = "github:Mic92/sops-nix";
    impermanence.url = "github:nix-community/impermanence";

    nvim-conf = {
      url = "github:T0adSage45/nvim";
      flake = false;
    };
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
    yazi-plugins = {
      url = "github:yazi-rs/plugins";
      flake = false;
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };
}

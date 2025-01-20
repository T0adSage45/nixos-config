{
  description = "T0adSage45's nixos config for nerds and anti-mouse guys";

  inputs = {
    # nixos-unstable channel
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # nur - nix user repository
    nur = {
      url = "github:nix-community/NUR";
    };

    # hyprland utils
    hypr-contrib = {
      url = "github:hyprwm/contrib";
    };

    # hypr color-picker
    hyprpicker = {
      url = "github:hyprwm/hyprpicker";
    };

    # code-formatter for nix
    alejandra = {
      url = "github:kamadorueda/alejandra/3.1.0";
    };

    # nix-gaming
    nix-gaming = {
      url = "github:fufexan/nix-gaming";
    };

    # hyprland
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
    # magnifier for Wayland
    hyprmag = {
      url = "github:SIMULATAN/hyprmag";
    };

    # yazi file-manager plugins
    yazi-plugins = {
      url = "github:yazi-rs/plugins";
      flake = false;
    };

    # Home-Manager setup for configurations
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # zig
    zig = {
      url = "github:mitchellh/zig-overlay";
    };

    # nvf- neovim config manager
    nvf = {
      url = "github:notashelf/nvf";
    };

    # spotify-client
    #   spicetify-nix = {
    #    url = "github:gerg-l/spicetify-nix";
    #    inputs.nixpkgs.follows = "nixpkgs";
    #  };

    # flatpak manager for NixOS
    # nix-flatpak = {
    #  url = "github:gmodena/nix-flatpak";
    #};

    # zen browser
    #  zen-browser = {
    #    url = "github:0xc000022070/zen-browser-flake";
    #  };

    # ghostty
    # ghostty = {
    #   url = "github:ghostty-org/ghostty";
    # };

  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    let
      user = "toadsage";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
        lib = nixpkgs.lib;
      };
    in
    {
      nixosConfigurations = {
        laptop = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            host = "laptop";
            inherit
              self
              nvf
              inputs
              user
              ;
          };
          modules = [ ./hosts/laptop ];
        };
      };
    };
}

{ inputs, ... }:
{
  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];

  #colorScheme = inputs.nix-colors.colorSchemes.catppuccin-macchiato; ---
  # colorScheme = inputs.nix-colors.colorSchemes.woodland; ---
  # colorScheme = inputs.nix-colors.colorSchemes.zenbones; ---
  # colorScheme = inputs.nix-colors.colorSchemes.xcode-dusk; ----
  # colorScheme = inputs.nix-colors.colorSchemes.vulcan; ---
  # colorScheme = inputs.nix-colors.colorSchemes.vice; ---
  # colorScheme = inputs.nix-colors.colorSchemes.uwunicorn; ---
  # colorScheme = inputs.nix-colors.colorSchemes.unikitty-dark;
  # colorScheme = inputs.nix-colors.colorSchemes.twilight;
  # colorScheme = inputs.nix-colors.colorSchemes.tokyo-city-dark;
  # colorScheme = inputs.nix-colors.colorSchemes.tender;
  # colorScheme = inputs.nix-colors.colorSchemes.tarot;
  # colorScheme = inputs.nix-colors.colorSchemes.tango;
  # colorScheme = inputs.nix-colors.colorSchemes.summerfruit-dark;
  colorScheme = inputs.nix-colors.colorSchemes.atelier-forest;
  # colorScheme = inputs.nix-colors.colorSchemes.blueforest;
  # colorScheme = inputs.nix-colors.gruvbox-medium-dark;

}

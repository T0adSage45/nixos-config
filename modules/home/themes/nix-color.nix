{ inputs, ... }:
{
  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];

  # colorScheme = inputs.nix-colors.colorSchemes.catppuccin-macchiato;
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
  # colorScheme = inputs.nix-colors.colorSchemes.atelier-forest;
  # colorScheme = inputs.nix-colors.colorSchemes.blueforest;
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-hard;
  # colorScheme = {
  #   name = "hollow-purple";
  #   palette = {
  #     base00 = "#1B2A26";
  #     base01 = "#355E3B";
  #     base02 = "#79A86E";
  #     base03 = "#C7D8A3";
  #     base04 = "#2E474F";
  #     base05 = "#3AAFA9";
  #     base06 = "#7DE3C1";
  #     base07 = "#E3FAF4";
  #     base08 = "#3D2E24";
  #     base09 = "#796C5D";
  #     base0A = "#D4B58F";
  #     base0B = "#F2DBA1";
  #     base0C = "#6283C5";
  #     base0D = "#2B3A62";
  #     base0E = "#A4B0CC";
  #     base0F = "#F9F9F9";
  #   };
  # };
}

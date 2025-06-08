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
  # colorScheme = inputs.nix-colors.colorSchemes.atelier-forest;
  # colorScheme = inputs.nix-colors.colorSchemes.blueforest;
  # colorScheme = inputs.nix-colors.gruvbox-medium-dark;
  colorScheme = {
    name = "hollow-purple";
    palette = {
      base00 = "#271C3A";
      base01 = "#100323";
      base02 = "#3E2D5C";
      base03 = "#5D5766";
      base04 = "#BEBCBF";
      base05 = "#DEDCDF";
      base06 = "#EDEAEF";
      base07 = "#BBAADD";
      base08 = "#A92258";
      base09 = "#918889";
      base0A = "#804ead";
      base0B = "#C6914B";
      base0C = "#7263AA";
      base0D = "#8E7DC6";
      base0E = "#953B9D";
      base0F = "#59325C";
    };
  };
}


















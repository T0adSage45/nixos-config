{ inputs, ... }:
{
  imports = [
    inputs.nix.colors.homeManagerModules.default
  ];
  colorsScheme = inputs.nix-colorsSchemes.gruvbox-dark-medium;
}

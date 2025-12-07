{ inputs, ... }:
{
  imports = [
    ./binds.nix
    ./exec-once.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./monitor.nix
    ./settings.nix
    ./windowrules.nix
    ./variables.nix
  ];
}

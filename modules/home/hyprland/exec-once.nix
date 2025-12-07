{ pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {

    exec-once = [
      "dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"

      "poweralertd &"
      # "wl-clip-persist --clipboard both &"
      # "wl-paste --watch cliphist store &"
      "swaync &"
      "vicinae server &"
      "udiskie --automount --notify --smart-tray &"
      "hyprctl setcursor bibata 14 &"
      "init-wallpaper &"

      "[workspace 1 silent] brave"
      "[workspace 2 silent] kitty"
      "[workspace 4 silent] obsidian"

    ];
  };
}

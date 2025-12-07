{ pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {

    binds = {
      movefocus_cycles_fullscreen = true;
    };

    bind = [
      # show keybinds list
      "$mainMod, F1, exec, show-keybinds"

      # keybindings
      "$mainMod, Return, exec, kitty"
      "$mainMod SHIFT, Return, exec, [float] kitty"
      "$mainMod, B, exec, hyprctl dispatch exec toggle_waybar"
      "$mainMod SHIFT, B, exec, brave"
      "$mainMod SHIFT, Q, killactive"
      "$mainMod SHIFT, O, exec, hyprctl dispatch exec obsidian"
      "$mainMod, F, fullscreen, 0"
      "$mainMod SHIFT, F, fullscreen, 1"
      "$mainMod SHIFT, Space, exec, toggle_float"
      "$mainMod, D, exec, rofi -show drun"
      "$mainMod SHIFT, D, exec, vicinae vicinae://toggle"
      "$mainMod, Escape, exec, hyprlock"
      "ALT, Escape, exec, hyprlock"
      "$mainMod SHIFT, Escape, exec, power-menu"
      "$mainMod, P, pseudo"
      "$mainMod, X, togglesplit"
      "$mainMod, T, exec, toggle_oppacity"
      "$mainMod, E, exec, lf"
      "ALT, E, exec, hyprctl dispatch exec '[float; size 1111 700] lf'"
      "$mainMod SHIFT, E, exec, nemo"
      "$mainMod, C, exec, hyprpicker -a"
      "$mainMod, W, exec, wallpaper-picker"
      "$mainMod SHIFT, W, exec, hyprctl dispatch exec '[float; size 925 615] waypaper'"
      "$mainMod CTRL, R, exec, random-wallpaper"
      "$mainMod, N, exec, swaync-client -t -sw"
      "CTRL SHIFT, Escape, exec, hyprctl dispatch exec '[workspace 9] missioncenter'"
      "$mainMod, equal, exec, woomer"

      # screenshot
      ", Print, exec, screenshot --copy"
      "$mainMod, Print, exec, screenshot --save"
      "$mainMod SHIFT, Print, exec, screenshot --swappy"

      # switch focus
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"
      "$mainMod, h, movefocus, l"
      "$mainMod, j, movefocus, d"
      "$mainMod, k, movefocus, u"
      "$mainMod, l, movefocus, r"

      "$mainMod, left, alterzorder, top"
      "$mainMod, right, alterzorder, top"
      "$mainMod, up, alterzorder, top"
      "$mainMod, down, alterzorder, top"
      "$mainMod, h, alterzorder, top"
      "$mainMod, j, alterzorder, top"
      "$mainMod, k, alterzorder, top"
      "$mainMod, l, alterzorder, top"

      "CTRL ALT, up, exec, hyprctl dispatch focuswindow floating"
      "CTRL ALT, down, exec, hyprctl dispatch focuswindow tiled"

      # switch workspace
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # move window to workspace
      "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
      "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
      "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
      "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
      "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
      "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
      "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
      "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
      "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
      "$mainMod SHIFT, 0, movetoworkspacesilent, 10"

      "$mainMod CTRL, c, movetoworkspace, empty"

      # window control
      "$mainMod SHIFT, left, movewindow, l"
      "$mainMod SHIFT, right, movewindow, r"
      "$mainMod SHIFT, up, movewindow, u"
      "$mainMod SHIFT, down, movewindow, d"
      "$mainMod SHIFT, h, movewindow, l"
      "$mainMod SHIFT, j, movewindow, d"
      "$mainMod SHIFT, k, movewindow, u"
      "$mainMod SHIFT, l, movewindow, r"

      "$mainMod CTRL, left, resizeactive, -20 0"
      "$mainMod CTRL, right, resizeactive, 20 0"
      "$mainMod CTRL, up, resizeactive, 0 -20"
      "$mainMod CTRL, down, resizeactive, 0 20"
      "$mainMod CTRL, h, resizeactive, -20 0"
      "$mainMod CTRL, j, resizeactive, 0 20"
      "$mainMod CTRL, k, resizeactive, 0 -20"
      "$mainMod CTRL, l, resizeactive, 20 0"

      "$mainMod SUPER, left, moveactive, -20 0"
      "$mainMod SUPER, right, moveactive, 20 0"
      "$mainMod SUPER, up, moveactive, 0 -20"
      "$mainMod SUPER, down, moveactive, 0 20"
      "$mainMod SUPER, h, moveactive, -20 0"
      "$mainMod SUPER, j, moveactive, 0 20"
      "$mainMod SUPER, k, moveactive, 0 -20"
      "$mainMod SUPER, l, moveactive, 20 0"

      # media
      ", XF86AudioMute, exec, pamixer -t"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioStop, exec, playerctl stop"

      # mouse workspace scroll
      "$mainMod, mouse_down, workspace, e-1"
      "$mainMod, mouse_up, workspace, e+1"

      # vicinae clipboard
      "$mainMod, V, exec, vicinae vicinae://extensions/vicinae/clipboard/history"
    ];

    bindl = [
      ", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
      ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
      "$mainMod, XF86MonBrightnessUp, exec, brightnessctl set 100%+"
      "$mainMod, XF86MonBrightnessDown, exec, brightnessctl set 100%-"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

  };
}

{ config, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      window_padding_width = 5;
      hide_window_decorations = "yes";
      font_size = 9;
      confirm_os_window_close = 0;
      enable_audio_bell = false;
      mouse_hide_wait = 40;

      # Transparency
      background_opacity = 0.90;

      # Colors
      background = "#${config.colorScheme.palette.base00}";
      # foreground = "#${config.colorScheme.palette.base06}";
      # Normal colors
      color0 = "#${config.colorScheme.palette.base00}";
      color1 = "#${config.colorScheme.palette.base08}";
      color2 = "#${config.colorScheme.palette.base0B}";
      color3 = "#${config.colorScheme.palette.base0A}";
      color4 = "#${config.colorScheme.palette.base0D}";
      color5 = "#${config.colorScheme.palette.base0E}";
      color6 = "#${config.colorScheme.palette.base0C}";
      color7 = "#${config.colorScheme.palette.base05}";

      # Bright colors
      color8 = "#${config.colorScheme.palette.base03}";
      color9 = "#${config.colorScheme.palette.base08}";
      color10 = "#${config.colorScheme.palette.base0B}";
      color11 = "#${config.colorScheme.palette.base0A}";
      color12 = "#${config.colorScheme.palette.base0D}";
      color13 = "#${config.colorScheme.palette.base0E}";
      color14 = "#${config.colorScheme.palette.base0C}";
      color15 = "#${config.colorScheme.palette.base07}";
    };
    keybindings = {
      "ctrl+shift+left" = "no_op";
      "ctrl+shift+right" = "no_op";
    };
  };
}

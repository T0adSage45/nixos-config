{ config, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "none";
        padding = {
          x = 5;
          y = 5;
        };
      };
      font = {
        size = 9;
        normal.family = "JetBrainsMono Nerd Font";
        bold.family = "JetBrainsMono Nerd Font";
        italic.family = "JetBrainsMono Nerd Font";
        bold_italic.family = "JetBrainsMono Nerd Font";
      };
      colors = {
        primary = {
          background = "#${config.colorScheme.palette.base00}"; # base00
          # foreground = "#${config.colorScheme.palette.base06}"; # base06
        };
        normal = {
          black = "#${config.colorScheme.palette.base00}"; # base00
          red = "#${config.colorScheme.palette.base08}"; # base08
          green = "#${config.colorScheme.palette.base0B}"; # base0B
          yellow = "#${config.colorScheme.palette.base0A}"; # base0A
          blue = "#${config.colorScheme.palette.base0D}"; # base0D
          magenta = "#${config.colorScheme.palette.base0E}"; # base0E
          cyan = "#${config.colorScheme.palette.base0C}"; # base0C
          white = "#${config.colorScheme.palette.base05}"; # base05
        };
        bright = {
          black = "#${config.colorScheme.palette.base03}"; # base03
          red = "#${config.colorScheme.palette.base08}"; # base08
          green = "#${config.colorScheme.palette.base0B}"; # base0B
          yellow = "#${config.colorScheme.palette.base0A}"; # base0A
          blue = "#${config.colorScheme.palette.base0D}"; # base0D
          magenta = "#${config.colorScheme.palette.base0E}"; # base0E
          cyan = "#${config.colorScheme.palette.base0C}"; # base0C
          white = "#${config.colorScheme.palette.base07}"; # base07
        };
        cursor = {
          cursor = "#${config.colorScheme.palette.base0B}";
          text = "CellForeground";
        };
        selection = {
          text = "CellForeground";
          background = "#${config.colorScheme.palette.base0B}";
        };
        vi_mode_cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
      };
    };
  };
}

{ config, ... }:
let
  custom = {
    font = "Maple Mono";
    font_size = "10px";
    font_weight = "bold";
    text_color = "#${config.colorScheme.palette.base05}";
    background_0 = "#${config.colorScheme.palette.base00}";
    background_1 = "#${config.colorScheme.palette.base01}";
    border_color = "#${config.colorScheme.palette.base0A}";
    red = "#${config.colorScheme.palette.base08}";
    green = "#${config.colorScheme.palette.base0B}";
    yellow = "#${config.colorScheme.palette.base0A}";
    blue = "#${config.colorScheme.palette.base0D}";
    magenta = "#${config.colorScheme.palette.base0E}";
    cyan = "#${config.colorScheme.palette.base0C}";
    orange_bright = "#${config.colorScheme.palette.base0F}";
    indicator_height = "2px";
    opacity = "5.3";
  };
in
{
  programs.waybar.style = with custom; ''
    * {
      border: none;
      border-radius: 4px;
      padding: 0;
      margin: 0;
      font-family: ${font};
      font-weight: ${font_weight};
      opacity: ${opacity};
      font-size: ${font_size};
    }

    window#waybar {
      background: ${background_1};
      border: 1px solid ${border_color};
    }

    tooltip {
      border: 1px solid ${border_color};
    }
    tooltip label {
      margin: 2px;
      color: ${text_color};
    }

    #workspaces {
      padding-left: 1px;
    }
    #workspaces button {
      color: ${yellow};
      padding-left: 1px;
      padding-right: 1px;
      margin-right: 1px;
    }
    #workspaces button.empty {
      color: ${text_color};
    }
    #workspaces button.active {
      color: ${orange_bright};
    }

    #clock {
      color: ${text_color};
    }

    #tray {
      margin-left: 5px;
      color: ${text_color};
    }
    #tray menu {
      background: ${background_1};
      border: 1px solid ${border_color};
      padding: 3px;
    }
    #tray menuitem {
      padding: 1px;
    }

    #pulseaudio, #network, #cpu, #memory, #disk, #battery, #language, #custom-notification {
      padding-left: 3px;
      padding-right: 3px;
      margin-right: 3px;
      color: ${text_color};
    }

    #pulseaudio, #language {
      margin-left: 3px;
    }

    #custom-notification {
      margin-left: 3px;
      padding-right: 2px;
      margin-right: 3px;
    }

    #custom-launcher {
      font-size: ${font_size};
      color: ${text_color};
      font-weight: bold;
      margin-left: 3px;
      padding-right: 3px;
    }
  '';
}

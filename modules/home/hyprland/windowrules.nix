{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "float,class:^(Viewnior)$"
      "float,class:^(imv)$"
      "float,class:^(mpv)$"
      "tile,class:^(Aseprite)$"
      "float,class:^(Audacious)$"
      "pin,class:^(rofi)$"
      "pin,class:^(waypaper)$"
      "float,title:^(Transmission)$"
      "float,title:^(Volume Control)$"
      "float,title:^(Firefox — Sharing Indicator)$"
      "move 0 0,title:^(Firefox — Sharing Indicator)$"
      "size 700 450,title:^(Volume Control)$"
      "move 40 55%,title:^(Volume Control)$"

      "float,title:^(Picture-in-Picture)$"
      "opacity 1.0 override 1.0 override,title:^(Picture-in-Picture)$"
      "pin,title:^(Picture-in-Picture)$"
      "opacity 1.0 override 1.0 override,title:^(.*imv.*)$"
      "opacity 1.0 override 1.0 override,title:^(.*mpv.*)$"
      "opacity 1.0 override 1.0 override,class:(Aseprite)"
      "opacity 1.0 override 1.0 override,class:(Unity)"
      "opacity 1.0 override 1.0 override,class:(brave)"
      "opacity 1.0 override 1.0 override,class:(evince)"
      "workspace 1,class:^(brave)$"
      "workspace 2,class:^(kitty)$"
      "workspace 2,class:^(Alacritty)$"
      "workspace 3,class:^(nemo)$"
      "workspace 4,class:^(obsidian)$"
      "workspace 5,class:^(Audacious)$"
      "workspace 5,class:^(Spotify)$"
      "workspace 6,class:^(Gimp-2.10)$"
      "workspace 7,class:^(com.obsproject.Studio)$"
      "workspace 8,class:^(telegram)$"
      "workspace 10,class:^(WebCord)$"
      "idleinhibit focus,class:^(mpv)$"
      "idleinhibit fullscreen,class:^(firefox)$"
      "float,class:^(org.gnome.Calculator)$"
      "float,class:^(waypaper)$"
      "float,class:^(zenity)$"
      "size 850 500,class:^(zenity)$"
      "size 725 330,class:^(SoundWireServer)$"
      "float,class:^(org.gnome.FileRoller)$"
      "float,class:^(org.pulseaudio.pavucontrol)$"
      "float,class:^(SoundWireServer)$"
      "float,class:^(.sameboy-wrapped)$"
      "float,class:^(file_progress)$"
      "float,class:^(confirm)$"
      "float,class:^(dialog)$"
      "float,class:^(download)$"
      "float,class:^(notification)$"
      "float,class:^(error)$"
      "float,class:^(confirmreset)$"
      "float,title:^(Open File)$"
      "float,title:^(File Upload)$"
      "float,title:^(branchdialog)$"
      "float,title:^(Confirm to replace files)$"
      "float,title:^(File Operation Progress)$"

      "opacity 0.0 override,class:^(xwaylandvideobridge)$"
      "noanim,class:^(xwaylandvideobridge)$"
      "noinitialfocus,class:^(xwaylandvideobridge)$"
      "maxsize 1 1,class:^(xwaylandvideobridge)$"
      "noblur,class:^(xwaylandvideobridge)$"

      "maxsize 1111 700,floating:2"

      # Remove context menu transparency in chromium-based apps
      "opaque,class:^()$,title:^()$"
      "noshadow,class:^()$,title:^()$"
      "noblur,class:^()$,title:^()$"
    ];

    layerrule = [
      "dimaround,vicinae"
      "dimaround,rofi"
      "dimaround,swaync-control-center"
    ];

    workspace = [
      "w[t1],gapsout:2,gapsin:2"
      "w[tg1],gapsout:2,gapsin:2"
      "f[1],gapsout:2,gapsin:2"
    ];

    xwayland = {
      force_zero_scaling = true;
    };
  };
}

{ ... }: {
  home.sessionVariables = {
    # Wayland / Hyprland
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";

    # Toolkits
    GDK_BACKEND = "wayland";
    CLUTTER_BACKEND = "wayland";
    SDL_VIDEODRIVER = "wayland";

    # Ozone / Chromium / Electron
    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
    OZONE_PLATFORM = "wayland";
    EGL_PLATFORM = "wayland";

    # Firefox / Gecko
    MOZ_ENABLE_WAYLAND = "1";

    # Qt
    QT_QPA_PLATFORM = "wayland;xcb";
    QT_QPA_PLATFORMTHEME =
      "qt5ct"; # or qt6ct if you want GTK integration for Qt6
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_STYLE_OVERRIDE = "kvantum";

    # Java
    _JAVA_AWT_WM_NONEREPARENTING = "1";

    # NVIDIA / GL tweaks (safe even on non-NVIDIA setups)
    WLR_RENDERER_ALLOW_SOFTWARE = "1";
    WLR_BACKEND = "vulkan";
    WLR_RENDERER = "vulkan";
    WLR_NO_HARDWARE_CURSORS = "1";
    WLR_DRM_NO_ATOMIC = "1";
    __GL_GSYNC_ALLOWED = "0";
    __GL_VRR_ALLOWED = "0";

    # Apps
    ANKI_WAYLAND = "1";
    GRIMBLAST_HIDE_CURSOR = "0";

    # Editor / browser
    EDITOR = "nvim";
    VISUAL = "nvim";
    BROWSER = "brave";

    # GTK
    GTK_THEME = "catppuccin-collide-dark";

    # Misc
    SSH_AUTH_SOCK = "/run/user/1000/ssh-agent";
    DISABLE_QT5_COMPAT = "0";
    DIRENV_LOG_FORMAT = "";
    NIXPKGS_ALLOW_UNFREE = "1";
  };
}

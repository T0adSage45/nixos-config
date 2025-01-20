{ user, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us,jp";
      xkb.options = "grp:super_caps_toggle";
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${user}";
    };
    libinput = {
      enable = true;
    };
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}

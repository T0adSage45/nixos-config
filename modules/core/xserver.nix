{ user, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us,jp";
      xkb.options = "grp:alt_shift_caps_toggle";
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${user}";
    };
    libinput = {
      enable = true;
    };
    xserver.videoDrivers = [ "nvidia" ];
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}

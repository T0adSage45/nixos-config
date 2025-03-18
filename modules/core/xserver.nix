{ user, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us,us,jp";
      xkb.variant = ",dvp,";
      xkb.options = "grp:alt_space_toggle";
      videoDrivers = [ "nvidia" ];
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

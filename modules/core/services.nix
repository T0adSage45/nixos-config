{ pkgs, user, ... }:
{
  services = {

    gvfs.enable = true;

    gnome = {
      tinysparql.enable = true;
      gnome-keyring.enable = true;
    };

    dbus = {
      enable = true;
      packages = with pkgs; [
        gcr
        gnome-settings-daemon
      ];
    };

    fstrim.enable = true;

    logind.settings.Login = {
      HandleLidSwitch = "suspend";
      HandleLidSwitchExternalPower = "suspend";
    };

    # xrdp = {
    #   enable = true;
    #   openFirewall = true;
    #   defaultWindowManager = "awesome";
    #   audio.enable = true;
    # };
    #
    # syncthing = {
    #   enable = true;
    #   user = "toadsage";
    #   dataDir = "/home/toadsage/";
    #   openDefaultPorts = true;
    # };

    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      videoDrivers = [ "nvidia" ];
      excludePackages = with pkgs; [ xterm ];
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${user}";
    };

    libinput = {
      enable = false;
      touchpad.naturalScrolling = false;
    };
  };

}

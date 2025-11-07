{ pkgs, ... }:
{
  boot = {
    # binfmt.emulatedSystems = [ "aarch64-linux" ];
    loader = {
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
      };
      systemd-boot = {
        enable = false;
        configurationLimit = 5;
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      timeout = 5;
    };
    kernelPackages = pkgs.linuxPackages_latest;
    supportedFilesystems = [ "ntfs" ];

    plymouth = {
      enable = true;
      theme = "breeze";
    };

    kernelParams = [
      "quiet"
      "loglevel=3"
      "systemd.show_status=auto"
      "udev.log_level=3"
      "rd.udev.log_level=3"
      "vt.global_cursor_default=0"
    ];

    consoleLogLevel = 0;
    initrd.verbose = false;
  };
}

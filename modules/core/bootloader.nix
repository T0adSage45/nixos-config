{ pkgs, config, ... }:

{
  boot = {
    # Enable cross-arch binaries if needed (e.g., aarch64)
    binfmt.emulatedSystems = [ "aarch64-linux" ];

    # Enable Plymouth splash
    plymouth = {
      enable = true;
      theme = "spinner-monochrome"; # Must match theme folder name
      themePackages = [
        (pkgs.plymouth-spinner-monochrome.override { inherit (config.boot.plymouth) logo; })
      ];
    };

    # Bootloader setup
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 5;
      };
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };

    # Kernel options to suppress logs and block firmware splash
    kernelParams = [
      "quiet" # Hide kernel messages
      "loglevel=3" # Reduce systemd/kernel log noise
      "systemd.show_status=auto" # Only show important boot events
      "rd.udev.log_level=3"
      "vt.global_cursor_default=0" # Hide blinking cursor
    ];

    # Suppress verbose messages
    consoleLogLevel = 0;
    initrd.verbose = false;

    # Optional: Use zen kernel
    kernelPackages = pkgs.linuxPackages_zen;

    # If you need Windows drives
    supportedFilesystems = [ "ntfs" ];
  };
}

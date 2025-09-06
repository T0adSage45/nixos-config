{
  pkgs,
  config,
  lib,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  # zramSwap.enable = true;

  environment.systemPackages = with pkgs; [
    acpi
    brightnessctl
    btop
    powertop
    cpupower-gui
  ];

  services = {
    power-profiles-daemon.enable = true;

    upower = {
      enable = true;
      percentageLow = 20;
      percentageCritical = 5;
      percentageAction = 3;
      criticalPowerAction = "PowerOff";
    };

    tlp.settings = {
      CPU_ENERGY_PERF_POLICY_ON_AC = "power";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 1;

      CPU_HWP_DYN_BOOST_ON_AC = 1;
      CPU_HWP_DYN_BOOST_ON_BAT = 1;

      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "performance";

      INTEL_GPU_MIN_FREQ_ON_AC = 500;
      INTEL_GPU_MIN_FREQ_ON_BAT = 500;
      # INTEL_GPU_MAX_FREQ_ON_AC=0;
      # INTEL_GPU_MAX_FREQ_ON_BAT=0;
      # INTEL_GPU_BOOST_FREQ_ON_AC=0;
      # INTEL_GPU_BOOST_FREQ_ON_BAT=0;

      # PCIE_ASPM_ON_AC = "default";
      # PCIE_ASPM_ON_BAT = "powersupersave";
    };

  };

  powerManagement.cpuFreqGovernor = "performance";

  boot = {
    kernelModules = [ "acpi_call" ];
    extraModulePackages =
      with config.boot.kernelPackages;
      [
        acpi_call
        cpupower
      ]
      ++ [ pkgs.cpupower-gui ];
  };
  #   initrd.postDeviceCommands = lib.mkAfter ''
  #     			mkdir /btrfs_tmp
  #     			mount /dev/root /btrfs_tmp
  #     			if [[ -e /btrfs_tmp/root ]];then
  #     				mkdir -p /btrfs_tmp/old_roots
  #     					timestamp=$(date --date="@$(stat -c %Y /btrfs_tmp/root)" "+Y-%m-%d_%H:%M:%S")
  #     					mv /btrfs_tmp/root "/btrfs_tmp/old_roots/$timestamp"
  #     					fi
  #
  #     					delete_subvolume_recurcive(){
  #     						IFs=$'\n'
  #     							for i in $(btrfs subvolume list -o "$1" | cut -f 9- -d ' '); do
  #     								delete_subvolume_recurcive "/btrfs_tmp/$i"
  #     									done
  #     									btrfs subvolume delete "$i"
  #     					}
  #     		for i in $(find /btrfs_tmp/old_roots/ -maxdepth 1 -mtime +1);do
  #     			delete_subvolume_recurcive "$i"
  #     				done
  #
  #     				btrfs subvolume create /btrfs_tmp/root
  #     				umount /btrf_tmp
  #     				'';
}

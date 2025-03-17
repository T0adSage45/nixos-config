{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        intel-media-driver
        #  (vaapiIntel.override { enableHybridCodec = true; })
        #  vaapiVdpau
        #  libvdpau-va-gl
      ];
    };
    nvidia.open = true;
  };
  hardware.enableRedistributableFirmware = true;
}

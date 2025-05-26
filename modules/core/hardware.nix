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
        # wineWowPackages.stable
        # wineWowPackages.waylandFull
        # (wine.override { wineBuild = "wine64"; })
        # wine64
      ];
    };
    nvidia.open = true;
  };
  hardware.enableRedistributableFirmware = true;
}

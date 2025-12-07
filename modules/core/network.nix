{ ... }:
{
  networking = {
    hostName = "myoboku";
    networkmanager = {
      enable = true;
      wifi.powersave = false;
      dns = "none";
    };
    nameservers = [
      # "1.0.0.1"
      "1.1.1.1"
      "8.8.8.8"
      "8.8.4.4"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        # 22
        # 80
        # 443
        # 59010
        # 59011
      ];
      allowedUDPPorts = [
        #59010
        # 59011
      ];
    };
  };

  # environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}

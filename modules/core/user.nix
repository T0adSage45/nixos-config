{
  pkgs,
  inputs,
  user,
  host,
  ...
}:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs user host; };
    users.${user} = {
      imports = [ ./../home ];
      home.username = "${user}";
      home.homeDirectory = "/home/${user}";
      home.stateVersion = "24.05";
      programs.home-manager.enable = true;
    };
  };

  users.users.${user} = {
    isNormalUser = true;
    description = "${user}";
    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
      "audio"
      "libvirtd"
      "docker"
    ];
    hashedPassword = "$6$jGBOuIc6wbQmjBgM$jlYWQu6EOSeWGgLBhuopGPUXXD1qlzOfed5r4RUuz8peS3x1V1gr8K84ypIaFtT4wqY6mFJNIxE0G/HxbDyup/";
    shell = pkgs.zsh;
  };
  nix.settings.allowed-users = [ "${user}" ];
}

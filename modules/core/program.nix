{ pkgs, ... }:
{
  programs = {

    # noisetorch.enable = true;
    dconf.enable = true;
    zsh.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        stdenv.cc.cc
        zlib
        curl
        openssl
      ];
    };
  };
}

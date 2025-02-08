{ pkgs, ... }:
let
  gitRepo = pkgs.fetchFromGitHub {
    owner = "T0adSage45";
    repo = "nvim";
    rev = "bb2431909b1fcb649c9c9ee990fb675954cf1b7b";
    sha256 = "0v1ikzr8wl43cpfvmyyj1xk1d29grmzdvbkf92245kg4j45n8vcw";
  };
in
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    defaultEditor = true;
  };
  xdg.configFile."nvim" = {
    source = gitRepo;
    recursive = true;
  };
}

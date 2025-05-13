{ inputs, pkgs, ... }:
{
  programs.neovim = {
    enable = false;
    vimAlias = true;
    defaultEditor = true;
  };
  xdg.configFile."nvim" = {
    source = "${inputs.nvim-conf}";
    recursive = true;
  };
}

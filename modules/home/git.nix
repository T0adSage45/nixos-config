{ pkgs, ... }:
{
  programs.git = {
    enable = true;

    userName = "T0adSage45";
    userEmail = "okami8542@gmail.com";

    extraConfig = {
      init.defaultBranch = "trunk";
      credential.helper = "store";
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = true;
        diff-so-fancy = true;
        navigate = true;
      };
    };
  };

 # home.packages = [ pkgs.gh ]; # pkgs.git-lfs

  programs.zsh.shellAliases = {
       gs = "git status";
  };
}

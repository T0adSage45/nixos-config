{ pkgs, user, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user.name = "T0adSage45";
      user.email = "okami8542@gmail.com";
      core.editor = "nvim";

      init.defaultBranch = "trunk";
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
      pull.ff = "only";
      color.ui = true;

      url = {
        "git@github.com:".insteadOf = [
          "gh:"
          "https://github.com/"
        ];
        "git@github.com:T0adSage45/".insteadOf = "fp:";
      };
      core.excludesFile = "/home/${user}/.config/git/.gitignore";
    };

  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      line-numbers = true;
      side-by-side = false;
      diff-so-fancy = true;
      navigate = true;
    };
  };

  xdg.configFile."git/.gitignore".text = ''
    .vscode
    node_modules/
    .env
    .env.local
    .cache
    .next
  '';

  home.packages = with pkgs; [
    gh
    serie
  ];

  programs.zsh.shellAliases = {
    g = "lazygit";
    gf = "onefetch --number-of-file-churns 0 --no-color-palette";

    gs = "git status";
    gcl = "git clone";
    gb = "git branch";

    ga = "git add";
    gaa = "git add --all";

    gc = "git commit";
    gcm = "git commit -m";
    gcma = "git add --all && git commit -m";

    gpl = "git pull";
    gplo = "git pull origin";

    gps = "git push";
    gpso = "git push origin";
    gpst = "git push --tags";
    gtag = "git tag -ma";

    gm = "git merge";
    gd = "git diff";
    gch = "git checkout";
    gchb = "git checkout -b";

    glg = "serie";
    glog = "git log --oneline --decorate --graph";
    glol = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'";
    glola = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all";
    glols = "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat";
  };
}

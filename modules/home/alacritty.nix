{ ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window.padding = {
        x = 5;
        y = 5;
      };
      window.decorations = "none";
      font = {
        size = 8;
      };
    };
  };
}

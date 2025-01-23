{ ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window.padding = {
        x = 10;
        y = 10;
      };
      window.decorations = "none";
      font = {
        size = 10;
      };
    };
  };
}

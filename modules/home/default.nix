{inputs, user, host, ...}: {
  imports = [
     ./alacritty.nix		       # terminal
     ./bat.nix                         # better cat command
     ./browser.nix                     # firefox based browser
     ./btop.nix
     ./fastfetch.nix                   # fetch tool
     ./fzf.nix                         # fuzzy finder
     ./git.nix                         # version control
     ./gnome.nix                       # gnome apps
     ./gtk.nix                         # gtk theme
     ./hyprland                        # window manager
     ./lazygit.nix
     ./nvim.nix                        # neovim editor
     ./p10k/p10k.nix
     ./packages.nix                    # other packages
     ./rofi.nix                        # launcher
     ./scripts/scripts.nix
   # ./waybar                          # status bar
     ./waypaper.nix                    # GUI wallpaper picker
     ./xdg-mimes.nix                   # xdg config
     ./yazi.nix                        # terminal file manager
     ./zsh                            # shel
     ./nemo.nix
     ./obsidian.nix
  ];
}

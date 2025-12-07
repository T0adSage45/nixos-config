{ ... }:
{
  imports = [
    ./alacritty.nix # terminal
    ./bat.nix # better cat command
    ./browser.nix # firefox based browser
    ./btop.nix
    ./cava.nix
    ./fastfetch.nix # fetch tool
    ./flow.nix
    ./fzf.nix # fuzzy finder
    ./git.nix # version control
    ./gnome.nix # gnome apps
    ./gtk.nix # gtk theme
    ./hyprland # window manager
    ./kitty.nix
    ./lazygit.nix
    ./micro.nix
    ./nvim # neovim editor
    ./nemo.nix
    ./obsidian.nix
    ./p10k/p10k.nix
    ./packages.nix # other packages
    ./rofi/rofi.nix # launcher
    ./scripts/scripts.nix
    ./spicetify.nix
    ./swayosd.nix
    ./swaync/swaync.nix
    ./vicinae/vicinae.nix
    ./themes
    ./tmux.nix
    ./waypaper.nix # GUI wallpaper picker
    ./waybar
    ./xdg-mimes.nix # xdg config
    ./zsh # shell
  ];
}

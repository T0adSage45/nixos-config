{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [

    ## --- 🛠️ Essential CLI Utilities ---
    binsider # Basic CLI helper
    bitwise # Bit/hex calculator
    caligula # Lightweight TUI for disk imaging
    docfd # Fuzzy document finder
    eza # Modern ls replacement
    entr # Run commands on file changes
    fd # Simple find alternative
    file # Inspect file types
    gifsicle # GIF manipulation tool
    gtrash # Safer file deletion
    hexdump # Hex dump viewer
    jq # JSON processor
    killall # Kill processes by name
    libnotify # Send desktop notifications
    mimeo # Open files with default app
    openssl # SSL/TLS toolkit
    ripgrep # Fast grep replacement
    shfmt # Shell script formatter
    tldr # Simplified man pages
    unzip # Unzip archives
    xdg-utils # Basic desktop integration tools
    xxd # Hex viewer/editor
    swappy # Screenshot editing tool
    poweralertd # Power event daemon
    showmethekey # Show pressed keys on screen

    ## --- 🎵 Media Utilities ---
    ffmpeg # Multimedia framework
    mpv # Media player
    imv # Image viewer
    yt-dlp-light # YouTube downloader
    playerctl # Media player controller
    pamixer # Audio volume control
    pavucontrol # Audio settings GUI
    vlc # Video player
    gimp # Image editor

    ## --- 🖥️ System Utilities ---
    ncdu # Disk usage analyzer
    nitch # System fetch tool
    onefetch # Git repo info fetcher
    treefmt2 # Project formatter
    gtt # Google translate TUI
    tdf # CLI PDF viewer
    telegram-desktop # Messaging app
    bleachbit # System cleaner
    xclip # Clipboard manager
    zenity # Simple dialogs
    lf # Terminal file manager

    ## --- 👩‍💻 Development Tools ---
    gcc # C compiler
    gdb # Debugger
    gnumake # Build tool
    cmake # Project build system
    valgrind # Memory checker
    nixd # Nix language server
    nixfmt-rfc-style # Nix code formatter
    inputs.alejandra.defaultPackage.${system} # Alejandra formatter
    inputs.zig.packages.${system}.master # Zig compiler (master branch)
    zls # Zig Language Server
    rustup # Rust installer
    go # Go programming language
    nodejs # Node.js runtime
    python3 # Python runtime
    python312Packages.ipython # Interactive Python
    luarocks # Lua package manager
    luajit # High-performance Lua
    vscode # Visual Studio Code editor

    ## --- 🌐 API / Networking Tools ---
    bruno # API client
    postman # API testing tool
    # beekeeper-studio # (Commented out) Database client

    ## --- 🎉 Fun Terminal Apps ---
    cbonsai # ASCII bonsai trees
    cmatrix # Matrix rain
    pipes # Terminal screensaver
    sl # Steam locomotive fun
    tty-clock # Terminal clock

    ## --- 🆕 New Addition ---
    anki-bin # Flashcards
  ];
}

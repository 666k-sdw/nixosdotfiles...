{ pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
  };


  environment.systemPackages = with pkgs; [
    chromium
    telegram-desktop
    kitty
    obs-studio
    rofi
    mpv
    obsidian
    discord
    gparted
    parted

    gnumake
    gcc
    python3

    fastfetch
    tree
    wget
    curl
    git
    lazygit
    unzip
    zip
    cava
    cmus
    ntfs3g
    yt-dlp
    swww
    neovim
    zathura

    dunst
    nautilus

    xwayland
    wl-clipboard
    cliphist

    prismlauncher

    kdePackages.spectacle

    hyprland
    xdg-desktop-portal-hyprland
    waybar
    hyprpicker
    hyprpaper
    hyprlock
    hypridle

    pipewire
    pulseaudio
    pamixer

    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-color-emoji
    font-awesome
  ];
}

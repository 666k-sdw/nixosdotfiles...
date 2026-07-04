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
    qbittorrent

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
    zathura
    emacs
    feh

    dunst
    nautilus

    xclip

    prismlauncher

    i3
    i3blocks

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
    nerd-fonts-agave
  ];
}

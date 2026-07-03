{ inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/all.nix
    ];

  networking.hostName = "nixos"; # Define your hostname.

  time.timeZone = "Asia/Yekaterinburg";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "26.05"; # Did you read the comment?

}

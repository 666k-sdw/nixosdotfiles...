{ config, pkgs, ...}:
{
  boot.kernelPackages = pkgs.linuxPackages_6_6;

  boot.extraModulePackages = [ config.boot.kernelPackages.rtl8821au ];
}

{ pkgs, config, ...}:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    nvidiaSettings = true;
    modesetting.enable = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  };
}

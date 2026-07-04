{ pkgs, ...}: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.lcow = {
      isNormalUser = true;
      description = "Lcow";
      extraGroups = [ "networkmanager" "wheel" "input"];
      packages = with pkgs; [];
    };
  };

}

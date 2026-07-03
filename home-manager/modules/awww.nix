{ pkgs, ... }: {

  home.packages = [ pkgs.awww ];

  systemd.user.services.awww-daemon = {
    Unit = {
      Description = "Awww Wallpaper Daemon";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${pkgs.awww}/bin/awww-daemon --namespace wayland-1";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}

{ config, pkgs, ... }:
{
  services.picom = {
    enable = true;
    package = pkgs.picom;
    backend = "glx";
  };

#  systemd.user.services = {
#    picom = {
#      Unit = {
#        Description = "A simple X11 compositor";
#        Documentation = "";
#        PartOf = [ "graphical-session.target" ];
#        After = [ "graphical-session.target" ];
#      };
#    
#      Service = {
#        ExecStart = "${pkgs.picom}/bin/picom --config ${config.xdg.configHome}/picom.conf";
#        ExecReload = "${pkgs.coreutils}/bin/kill -SIGUSR2 $MAINPID";
#        Restart = "on-failure";
#        KillMode = "mixed";
#      };
#    
#      Install = { WantedBy = [ "graphical-session.target" ]; };
#    };
#  };
}

{ pkgs, ... }:
{
  services.dbus = {
    enable = true;
    implementation = "broker";
  };

#  services.picom = {
#    enable = true;
#    package = pkgs.picom;
#  };
  
  services.xserver = {
    enable = true;
    layout = "us";

    libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
    };

    displayManager.startx.enable = true;
    windowManager.qtile = {
      enable = true;
      backend = "x11";
    };
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}


{ pkgs, ... }:
pkgs.writeShellApplication {
  name = "local-qtilerc";
  runtimeInputs = with pkgs; [ picom dunst ];

  text = ''
    picom &
    dunst &
  '';
}


{ pkgs, ... }: let
  qtilerc = import ./qtilerc.nix { inherit pkgs; };
  discord = pkgs.discord.override { withOpenASAR = true; };
in {
  imports = [ ./systemd-services.nix ];
  
  home.username = "lactose";
  home.homeDirectory = "/home/lactose";

  xdg.enable = true;

  programs.zsh = {
    enable = true;
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs.zsh.initExtra = ''
    source /etc/nixos/zsh/aliases
  '';
  
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
  
  home.packages = with pkgs; [
    qtilerc
    dunst
    fastfetch
    alacritty
    firefox
    discord
    btop
  ];

  home.stateVersion = "23.05";
  programs.home-manager.enable = true;
}

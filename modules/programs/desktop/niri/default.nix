{ pkgs, ... }:
{
  programs.niri.enable = true;
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts-color-emoji
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = [
      "gnome"
      "gtk"
    ];
  };
}

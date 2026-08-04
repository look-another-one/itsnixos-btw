{ config, pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  gtk = {
    enable = true;
    gtk4.theme = config.gtk.theme;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk2";
    style.name = "adwaita-dark";
    style.package = pkgs.adwaita-qt;
  };

  xdg.configFile."niri".source = ./niri/config;
}

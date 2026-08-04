{ ... }:
{
  programs.imv.enable = true;
  xdg.mimeApps.defaultApplications = {
    "image/png" = [ "imv.desktop" ];
    "image/jpeg" = [ "imv.desktop" ];
  };
}

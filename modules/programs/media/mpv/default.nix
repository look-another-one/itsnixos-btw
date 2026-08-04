{ ... }:
{
  programs.mpv = {
    enable = true;
  };

  xdg.mimeApps.defaultApplications = {
    "video/mp4" = [ "mpv.desktop" ];
    "video/x-matroska" = [ "mpv.desktop" ];
  };
}

{ pkgs, ... }:
{
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;
    plugins = [
      pkgs.obs-studio-plugins.obs-backgroundremoval
      pkgs.obs-studio-plugins.obs-vkcapture
      pkgs.obs-studio-plugins.obs-source-record
    ];
  };
}

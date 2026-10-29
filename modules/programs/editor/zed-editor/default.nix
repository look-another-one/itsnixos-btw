{ ... }:
{
  programs.zed-editor = {
    enable = true;
  };
  xdg.configFile."zed/settings.json".source = ./settings.json;
}

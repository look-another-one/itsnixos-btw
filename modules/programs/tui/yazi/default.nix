{ ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
    settings = {
      show-symlink = true;
    };
  };
}

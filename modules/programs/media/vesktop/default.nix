{ ... }:

{
  programs.vesktop = {
    enable = true;

    settings = {
      discordBranch = "stable";
      hardwareAcceleration = true;
      arRPC = true;
      checkUpdates = false;
      minimizeToTray = false;
      customTitleBar = false;
      splashTheming = true;
      splashBackground = "#000000";
      splashColor = "#ffffff";
    };
  };
}

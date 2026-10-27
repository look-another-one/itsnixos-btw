{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    antigravity-ide-fhs
    zip
    quickshell
    antigravity-cli
  ];

  services.cron.enable = true;
  services.envfs.enable = true;
}

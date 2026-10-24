{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    antigravity-ide-fhs
    zip
  ];

  services.cron.enable = true;
  services.envfs.enable = true;
}

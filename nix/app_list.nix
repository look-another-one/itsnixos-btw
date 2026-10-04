{pkgs, ...}:
{
  
  environment.systemPackages = with pkgs; [
    antigravity-ide-fhs
  ];
  
  services.cron.enable = true;
  services.envfs.enable = true;
}
{pkgs, ...}:
{
  
  environment.systemPackages = with pkgs; [
    antigravity-ide-fhs
    fzf
  ];
  
  
  services.cron.enable = true;
  services.envfs.enable = true;
}
{ pkgs, ... }:
{
  services.mysql = {
    enable = true;
    package = pkgs.mysql84;
  };
  
  environment.systemPackages = [
    pkgs.beekeeper-studio
  ];
}

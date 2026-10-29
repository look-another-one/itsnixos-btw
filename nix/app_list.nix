{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    quickshell
    antigravity-cli
  ];
}

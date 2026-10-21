{ pkgs, ... }:
{
  services.udisks2.enable = true;

  # Printing
  services.printing = {
    enable = true;
    drivers = [
      pkgs.hplip
    ];
  };

  environment.systemPackages = with pkgs; [
    cryptsetup
    neovim
    git
    bat
    gvfs
  ];

}

{ ... }:
{
  networking.stevenblack = {
    enable = true;
    block = [ "porn" ];
  };
  networking.networkmanager.enable = true;
  networking.hostName = "nixos-btw";
  services.openssh.enable = true;
}

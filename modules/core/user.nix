{ pkgs, ... }:
{
  users.users.humenbeing = {
    isNormalUser = true;
    description = "its nixos";
    extraGroups = [
      "networkmanager"
      "wheel"
      "vboxusers"
      "libvirtd"
      "kvm"
    ];
    packages = with pkgs; [ nushell ];
    shell = pkgs.nushell;
  };
}

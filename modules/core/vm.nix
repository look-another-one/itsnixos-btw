{ pkgs, ... }:
{
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      runAsRoot = true;
      swtpm.enable = true;
      package = pkgs.qemu_kvm;
    };
  };

  programs.virt-manager.enable = true;

}

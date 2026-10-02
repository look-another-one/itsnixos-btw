{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./app_list.nix

    ### Core
    ../modules/core/core.nix
    ../modules/core/bluetooth.nix
    ../modules/core/battery.nix
    ../modules/core/audio.nix
    ../modules/core/systemd-boot.nix
    ../modules/core/greetd.nix
    ../modules/core/graphics.nix
    ../modules/core/keyd.nix
    ../modules/core/networking.nix
    ../modules/core/nix.nix
    ../modules/core/user.nix
    ../modules/core/vm.nix

    ### Modules
    ../modules/programs/browser/helium/default.nix
    ../modules/programs/media/obs-studio/default.nix

    ### Dev
    ../modules/programs/dev/cpp/default.nix
    ../modules/programs/dev/mysql/default.nix
    ../modules/programs/dev/nix/default.nix
    ../modules/programs/dev/nodejs/default.nix
    ../modules/programs/dev/python/default.nix

    ### Media
    ../modules/programs/media/localsend/default.nix
    
    ../modules/programs/desktop/niri/default.nix
  ];

  time.timeZone = "Asia/Karachi";
  system.stateVersion = "26.11";
}

{ pkgs, ... }: {

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep 5 --keep-since 3d";
    flake = "/home/humenbeing/itsnixos-btw";
  };

  programs.nix-ld.enable = true;

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
  nixpkgs.config.allowUnfree = true;
  nix.package = pkgs.lixPackageSets.stable.lix;
}

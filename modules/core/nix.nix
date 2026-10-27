{ ... }: {

  programs.nh = {
    enable = true;
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
}

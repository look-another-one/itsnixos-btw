{ pkgs, ... }:
{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      ls = "eza --icons=always";
      la = "eza -a --icons=always";
      ll = "eza -a --icons=always";
      lt = "eza -a --tree --level=1 --icons=always";
      c = "clear";
      q = "exit";
      ff = "fastfetch";
      v = "nvim";

      # git
      st = "git status";
      ph = "git push";
      pl = "git pull";
      cm = "git commit -m";
      ad = "git add";

      nix-sw = "nh os switch";
      nix-bt = "nh os boot";

    };
    initExtra = ''
      bind '"\C-h": backward-kill-word'
    '';
  };
  home.packages = [ pkgs.eza ];
}

{ ... }:
{
  programs.nushell = {
    enable = true;
    settings = {
      show_banner = false;
    };
    shellAliases = {
      c = "clear";
      q = "exit";
      ff = "fastfetch";
      v = "nvim";

      # git alias
      st = "git status";
      ph = "git push";
      pl = "git pull";
      cm = "git commit -m";
      ad = "git add";

      nix-sw = "nh os switch";
      nix-bt = "nh os boot";
      
      fastdl = "aria2c -x 16 -s 16 -k 1M -c";
    };
    extraConfig = ''
        $env.config.buffer_editor = "nvim" 
        $env.config.edit_mode = "vi"
        $env.config.keybindings = (
          $env.config.keybindings | append {
              name: ctrl-backspace
              modifier: control
              keycode: char_h
              mode: [emacs vi_insert]
              event: { edit: BackspaceWord }
          }
      )
      	'';
  };
}

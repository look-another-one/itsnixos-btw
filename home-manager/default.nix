{ ... }:
{
  home.username = "humenbeing";
  home.homeDirectory = "/home/humenbeing";
  home.stateVersion = "26.11";
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
  imports = [
    ### Cli
    ../modules/programs/cli/fastfetch/default.nix
    ../modules/programs/cli/kitty/default.nix
    ../modules/programs/cli/ripgrep/default.nix
    ../modules/programs/cli/starship/default.nix

    ### Editor
    ../modules/programs/editor/obsidian/default.nix
    ../modules/programs/editor/zed-editor/default.nix

    ### Media
    ../modules/programs/media/imv/default.nix
    ../modules/programs/media/mpv/default.nix

    ### Shell
    ../modules/programs/shell/bash/default.nix
    ../modules/programs/shell/nushell/default.nix

    ### Tui
    ../modules/programs/tui/btop/default.nix
    ../modules/programs/tui/lazygit/default.nix
    ../modules/programs/tui/yazi/default.nix

    ### Desktop
    ../modules/programs/desktop/noctalia/default.nix
    ../modules/programs/desktop/theme.nix
  ];

}

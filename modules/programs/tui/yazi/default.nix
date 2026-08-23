{ pkgs, ... }:
{
  home.packages = [ pkgs.trash-cli ];
  
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
    settings = {
      show-symlink = true;
      plugin = {
              prepend_fetchers = [
                {
                  url = "*";
                  run = "git";
                  group = "git";
                }
                {
                  url = "*/";
                  run = "git";
                  group = "git";
                }
              ];
            };
    };
    plugins = {
      git = pkgs.yaziPlugins.git;
      omni-trash = pkgs.yaziPlugins.omni-trash;
    };

    # 3. Initialize the plugin in Lua
    initLua = ''
      require("git"):setup()
    '';
    keymap = {
          mgr = {
            prepend_keymap = [
              {
                on = "R";
                run = "plugin omni-trash";
                desc = "Open Omni Trash";
              }
            ];
          };
        };
  };
}

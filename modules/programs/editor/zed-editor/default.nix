{ ... }:
{
  programs.zed-editor = {
    enable = true;

    userSettings = {
      disable_ai = true;

      outline_panel = {
        dock = "right";
      };

      collaboration_panel = {
        dock = "left";
      };

      git_panel = {
        tree_view = true;
        dock = "right";
      };

      cli_default_open_behavior = "existing_window";

      project_panel = {
        bold_folder_labels = true;
        dock = "left";
      };

      agent = {
        dock = "right";
        sidebar_side = "right";
        favorite_models = [ ];
        model_parameters = [ ];
      };

      autosave = {
        after_delay = {
          milliseconds = 1000;
        };
      };

      buffer_font_family = "JetBrainsMono Nerd Font";
      icon_theme = "Material Icon Theme";
      theme = "Catppuccin Mocha";

      auto_install_extensions = {
        catppuccin = true;
        nix = true;
        material-icon-theme = true;
      };
      vim_mode = true;
      languages = {
        Python = {
          language_servers = [
            "ty"
            "!basedpyright"
          ];
        };
        nix = {
          binary = {
            path_lookup = true;
          };
        };
      };
    };
  };
}

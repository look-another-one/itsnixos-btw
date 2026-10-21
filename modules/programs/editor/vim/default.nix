{
  inputs,
  pkgs,
  ...
}:
{
  imports = [ inputs.nvf.nixosModules.default ];
  programs.nvf.enable = true;
  programs.nvf.settings.vim = {
    viAlias = false;
    vimAlias = false;
    preventJunkFiles = true;
    enableLuaLoader = true;

    options = {
      signcolumn = "yes:2";
      wrap = false;
    };

    theme = {
      enable = true;
      name = "tokyonight";
      style = "night";
    };

    # --- Editing essentials -------------------------------------------------
    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.blink-cmp.enable = true;
    binds.whichKey.enable = true;
    visuals.nvim-web-devicons.enable = true;
    ui.illuminate.enable = true;
    notes.todo-comments.enable = true;
    git.gitsigns.enable = true;
    mini.files = {
      enable = true;
      setupOpts.windows = {
        max_number = 3;
        preview = false;
      };
    };

    # --- LSP / languages ----------------------------------------------------
    lsp = {
      enable = true;
      formatOnSave = true;
    };

    languages = {
      enableTreesitter = true;
      enableFormat = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      lua.enable = true;
      markdown.enable = true;
      tsx.enable = true;
      css.enable = true;
      python.enable = true;
    };

    treesitter = {
      fold = true;
      context.enable = true;
    };

    utility.snacks-nvim = {
      enable = true;
      setupOpts = {
        bigfile.enabled = true;
        quickfile.enabled = true;
        input.enabled = true;
        notifier.enabled = true;
        scroll.enabled = true;
        statuscolumn.enabled = true;
        words.enabled = true;
        dashboard = {
          enabled = true;
          preset = {
            header = ''
              █▄▄  ▄▄▀ █▄▄  ▄▄█ █▄▀█▄ ▄█▄   ▄▄▄▄ █▄▀█▄ 
               ██  ██   ██  ██  ▓█  █▄▌ █▄ ▄█ ▀▀ ▓█  █▄
               ██  ██   ██  ██  ██  ██  ██ ██    ██  ██
               ██▄▄▄▄   ██  ▒▒  ██  ██  ██ ▓▓▄▄  ██  ██
               ▓▓  ▓▓   ▓▓  ▓▓  ▓▓  ▓▓  ▓▓ ▓▓    ▓▓  ▓▓
               ██  ██   ▀█  █▀  ██  ▀█  ██ ▀█    ██  ██
              ▀▀▀  ▀▀▀   ▀▄▄▀   ▀▀      █▀  ▀▀▀  ▀▀  ██
            '';
            keys = [
              {
                icon = "🔍";
                key = "f";
                desc = "Find File";
                action = ":Telescope find_files";
              }
              {
                icon = "📄";
                key = "n";
                desc = "New File";
                action = ":ene | startinsert";
              }
              {
                icon = "📝";
                key = "g";
                desc = "Find Text";
                action = ":Telescope live_grep";
              }
              {
                icon = "🕘";
                key = "r";
                desc = "Recent Files";
                action = ":Telescope oldfiles";
              }
              {
                icon = "🚪";
                key = "q";
                desc = "Quit";
                action = ":qa";
              }
            ];
          };

          sections = [
            {
              section = "header";
              padding = 2;
            }
            {
              section = "keys";
              gap = 1;
              padding = 2;
            }
            {
              section = "recent_files";
              icon = "📂";
              title = "Recent Files";
              cwd = true;
              limit = 5;
              indent = 2;
              padding = 1;
            }
            {
              section = "projects";
              icon = "📁";
              title = "Recent Projects";
              limit = 5;
              indent = 2;
              padding = 1;
            }
          ];
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>z";
        lua = true;
        silent = true;
        desc = "Toggle Zen Mode";
        action = ''function() require("snacks").zen() end'';
      }
      {
        mode = "n";
        key = "<leader>Z";
        lua = true;
        silent = true;
        desc = "Toggle Zoom Mode";
        action = ''function() require("snacks").zen.zoom() end'';
      }
      {
        mode = "n";
        key = "-";
        action = "<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>";
        silent = true;
        desc = "Open file explorer at current file";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
        silent = true;
        desc = "Find files";
      }
      {
        mode = "n";
        key = "<leader>f/";
        action = "<cmd>Telescope live_grep<CR>";
        silent = true;
        desc = "Live grep";
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope buffers<CR>";
        silent = true;
        desc = "Buffers";
      }
      {
        mode = "n";
        key = "<leader>lf";
        action = "<cmd>lua vim.lsp.buf.format()<CR>";
        silent = true;
        desc = "Format buffer";
      }
    ];

    # --- Lazy-loaded plugin example (copy this shape for more) --------------
    lazy = {
      enable = true;
      plugins.undotree = {
        package = pkgs.vimPlugins.undotree;
        cmd = [ "UndotreeToggle" ];
        keys = [
          {
            mode = "n";
            key = "<leader>u";
            action = "<cmd>UndotreeToggle<CR>";
            silent = true;
            desc = "Undo tree";
          }
        ];
      };
    };
    ui.colorizer = {
      enable = true;
      setupOpts = {
        filetypes = {
          "*" = { };
          css = {
            css = true;
          };
        };
        user_default_options = {
          names = true;
          tailwind = true;
          mode = "background";
        };
      };
    };
    # --- Raw Lua escape hatch -----------------------------------------------
    luaConfigPost = ''
      vim.opt.scrolloff = 8
    '';
  };
}

{
  plugins.lsp-format.enable = true;

  plugins.lsp-lines.enable = true;

  plugins.lsp = {
    enable = true;
    inlayHints = true;

    servers = {
      html.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      pyright.enable = true;
      gopls.enable = true;
      clangd.enable = true;
      ols.enable = true;
      rust_analyzer = {
        enable = true;
        # i think using the currently installed cargo and rustc is better
        # so i disable it from nixvim
        installCargo = false;
        installRustc = false;
      };
    };

    keymaps = {
      silent = true;

      lspBuf = {
        "<leader>gd" = {
          action = "definition";
          desc = "Goto Definition";
        };
        "<leader>gr" = {
          action = "references";
          desc = "Goto References";
        };
        "<leader>gD" = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        "<leader>gI" = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        "<leader>gT" = {
          action = "type_definition";
          desc = "Type Definition";
        };
        "<leader>K" = {
          action = "hover";
          desc = "Hover";
        };
        "<leader>cw" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "Code Action";
        };
      };

      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "[d" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };
}

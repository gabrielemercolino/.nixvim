{
  plugins.lsp = {
    enable = true;
    
    servers = {
      java-language-server.enable = true;
    };

    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>w" = {
          action = "open_float";
          desc = "Show Line Diagnostics";
        };
      };
      lspBuf = {
        "<leader>ca" = {
          action = "code_action";
          desc = "Code Actions";
        };
      };
    };
  };
}

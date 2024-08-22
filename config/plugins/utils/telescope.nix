{
  plugins.telescope = {
    enable = true;

    extensions = {
      file-browser.enable = true;
      fzf-native.enable = true;
    };

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Find files";
      };

      "<leader>fr" = {
        action = "live_grep";
        options.desc = "Find text";
      };

      "<leader>fb" = {
        action = "file_browser";
        options.desc = "File browser";
      };
    };
  };
}

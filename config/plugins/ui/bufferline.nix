{
  plugins.bufferline = {
    enable = true;

    settings.options = {
      diagnostics = "nvim_lsp";
      mode = "buffers";

      closeIcon = " ";
      bufferCloseIcon = "󰱝 ";
      modifiedIcon = "󰔯 ";

      offsets = [
        {
          filetype = "neo-tree";
          text = "Neo-tree";
          highlight = "Directory";
          text_align = "left";
        }
      ];

    };

  };

  keymaps = [ ];
}

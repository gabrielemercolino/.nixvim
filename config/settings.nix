{
  config = {
    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {
      # Enable relative line numbers
      number = true;
      relativenumber = true;

      clipboard = "unnamedplus";

      # Set tabs to 2 spaces
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
      expandtab = true;

      # Enable auto indenting and set it to spaces
      smartindent = true;
      shiftwidth = 2;

      # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
      breakindent = true;

      # Enable incremental searching
      hlsearch = true;
      incsearch = true;

      # Enable text wrap
      wrap = true;

      foldmethod = "manual";
      foldenable = false;

      linebreak = true;

      spell = false;

      # Better splitting
      splitbelow = true;
      splitright = true;

      # Enable ignorecase + smartcase for better searching
      ignorecase = true;
      smartcase = true; # Don't ignore case with capitals
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      # Enable persistent undo history
      swapfile = false;
      backup = false;
      undofile = true;

      # Enable 24-bit colors
      termguicolors = true;

      # Enable cursor line highlight
      cursorline = true;

      # Always keep 8 lines above/below cursor unless at start/end of file
      scrolloff = 8;

      # Reduce which-key timeout to 10ms
      timeoutlen = 10;

      # More space in the neovim command line for displaying messages
      cmdheight = 0;
    };

  };
}

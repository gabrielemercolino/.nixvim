{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    
    # UI
    ./colorscheme/colorscheme.nix
    ./plugins/ui/statusline.nix
    ./plugins/ui/nvimtree.nix
    
    # LSP
    ./plugins/lsp/lsp.nix

    # Utils
    ./plugins/utils/telescope.nix
    ./plugins/utils/treesitter.nix
    ./plugins/utils/whichkey.nix

  ];
  
  globals.mapleader = " ";

}

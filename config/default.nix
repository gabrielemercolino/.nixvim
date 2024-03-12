{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./nvimtree.nix
    ./whichkey.nix
    ./colorscheme.nix
    ./statusline.nix
    ./telescope.nix
    ./treesitter.nix
  ];
  
  globals.mapleader = " ";

}

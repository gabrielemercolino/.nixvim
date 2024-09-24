{
  # Import all your configuration modules here
  imports = [
    ./settings.nix
    ./keymaps.nix

    ./plugins/themes/catppuccin.nix

    ./plugins/completitions/cmp.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/navic.nix

    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/startup.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix

    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/extra-plugins.nix
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/web-devicons.nix
  ];

}

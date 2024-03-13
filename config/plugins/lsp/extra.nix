{ pkgs, ... }:

{
  extraPlugins = with pkgs; [ vimPlugins.nvim-jdtls jdt-language-server];
  extraConfigLua = ''
  local config = {
    cmd = {'${pkgs.jdt-language-server}/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
  }
  require('jdtls').start_or_attach(config)
  '';
}

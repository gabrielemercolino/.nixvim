{ lib, pkgs, ... }: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      notify_on_error = true;

      formatters = {
        shellcheck.command = "${lib.getExe pkgs.shellcheck}";
        shellharden.command = "${lib.getExe pkgs.shellharden}";
        shfmt.command = "${lib.getExe pkgs.shfmt}";
        alejandra.command = "${lib.getExe pkgs.alejandra}";
        prettierd.command = "${lib.getExe pkgs.prettierd}";
      };

      formatters_by_ft = {
        bash = [ "shellcheck" "shellharden" "shfmt" ];
        nix = ["alejandra"];
        markdown = [
          [ "prettierd" "prettier" ]
        ];
      };
    };
  };
}

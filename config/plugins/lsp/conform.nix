{ lib, pkgs, ... }:
{
  extraConfigLuaPre =
    # lua
    ''
      local slow_format_filetypes = {}

      vim.api.nvim_create_user_command("FormatDisable", function(args)
         if args.bang then
          -- FormatDisable! will disable formatting just for this buffer
          vim.b.disable_autoformat = true
        else
          vim.g.disable_autoformat = true
        end
      end, {
        desc = "Disable autoformat-on-save",
        bang = true,
      })
      vim.api.nvim_create_user_command("FormatEnable", function()
        vim.b.disable_autoformat = false
        vim.g.disable_autoformat = false
      end, {
        desc = "Re-enable autoformat-on-save",
      })
      vim.api.nvim_create_user_command("FormatToggle", function(args)
        if args.bang then
          -- Toggle formatting for current buffer
          vim.b.disable_autoformat = not vim.b.disable_autoformat
        else
          -- Toggle formatting globally
          vim.g.disable_autoformat = not vim.g.disable_autoformat
        end
      end, {
        desc = "Toggle autoformat-on-save",
        bang = true,
      })
    '';
  plugins.conform-nvim = {
    enable = true;

    settings = {
      format_on_save =
        #lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_fallback = true }, on_format
           end
        '';

      format_after_save =
        #lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if not slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            return { lsp_fallback = true }
          end
        '';

      notify_on_error = true;

      formatters = {
        shellcheck.command = "${lib.getExe pkgs.shellcheck}";
        shellharden.command = "${lib.getExe pkgs.shellharden}";
        shfmt.command = "${lib.getExe pkgs.shfmt}";
        nixfmt-rfc-style.command = "${lib.getExe pkgs.nixfmt-rfc-style}";
        prettierd.command = "${lib.getExe pkgs.prettierd}";
      };

      formatters_by_ft = {
        bash = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        nix = [ "nixfmt-rfc-style" ];
        markdown = [
          [
            "prettierd"
            "prettier"
          ]
        ];
        "_" = [ "trim_whitespace" ];
      };
    };
  };
}

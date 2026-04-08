return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-org/mason.nvim", "mason-org/mason-lspconfig.nvim" },
    lazy = false,
    opts = function(_, opts)
      local lspconfig = require("lspconfig")
      opts.servers.vuels = {
        init_options = {
          config = {
            vetur = {
              useWorkspaceDependencies = true,
              validation = { template = true, script = true, style = true },
              completion = { autoImport = true, useScaffoldSnippets = false },
              experimental = { templateInterpolationService = true },
              format = { defaultFormatter = { js = "prettier", ts = "prettier" } },
            },
          },
        },
      }
      opts.setup = opts.setup or {}
      opts.setup.vuels = function(_, _)
        lspconfig.vuels.setup(opts.servers.vuels)
        return true
      end
    end,
  },
}

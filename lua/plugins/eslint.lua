-- The eslint extra's formatter goes through conform, which runs the filetype's
-- formatters (prettier) and only falls back to the LSP when there are none, so
-- eslint fixes (e.g. perfectionist sorting) never get applied on format/save.
-- Call the eslint LSP directly instead; it runs before conform/prettier.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        eslint = function()
          LazyVim.format.register({
            name = "eslint: lsp",
            primary = false,
            priority = 200,
            format = function(buf)
              vim.lsp.buf.format({ bufnr = buf, name = "eslint", timeout_ms = 5000 })
            end,
            sources = function(buf)
              local clients = vim.lsp.get_clients({ bufnr = buf, name = "eslint" })
              return vim.tbl_map(function(client)
                return client.name
              end, clients)
            end,
          })
        end,
      },
    },
  },
}

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang-format" },
    rust = { "rustfmt" },
    go = { "goimports", "gofmt", "golines" },
    dart = { "dart_format" },
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)

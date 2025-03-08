return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- c++ --
        "clangd",
        "clang-format",

        "lua-language-server",
        "rust-analyzer",

        -- go --
        "gopls",
        "goimports",
        "golines",

        -- c# --

        -- Java ---
        "jdtls",

        -- python --
        "pyright",
        "isort",
        "black",
        "mypy",
        "ruff",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",

        "cpp",
        "rust",
        "go",
        "c_sharp",
        "java",
        "python",
        "dart",

        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        "yaml",
        "sql",
      },
    },
  },
}

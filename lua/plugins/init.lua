return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
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
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
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

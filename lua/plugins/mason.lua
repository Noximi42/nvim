return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        --- default ---
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",

        --- C# ---
        "roslyn", -- in wsl currently only version 5.4 is working "roslyn@5.4.0-2.26175.10",
        "csharpier",

        -- c++ --
        "clangd",
        "clang-format",

        "lua-language-server",
        "rust-analyzer",

        -- go --
        -- "gopls",
        -- "goimports",
        -- "golines",

        -- Java ---
        "jdtls",

        -- python --
        "pyright",
        "isort",
        "black",
        "mypy",
        "ruff",

        -- web --
        "vetur-vls",
        "vtsls",
        "svelte-language-server",
        "tailwindcss-language-server",
        "prettier",
      },
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
}

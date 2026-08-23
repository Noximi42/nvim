return {
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/snacks.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      picker = "snacks",
      enable_builtin = true,
    },
    keys = {
      { "<leader>gc", "<cmd>Octo pr create<cr>", desc = "Create GitHub PullRequest" },
      -- { "<leader>oi", "<cmd>Octo issue list<cr>", desc = "List GitHub Issues" },
      -- { "<leader>ol", "<cmd>Octo pr list<cr>", desc = "List GitHub PullRequests" },
      -- { "<leader>od", "<cmd>Octo discussion list<cr>", desc = "List GitHub Discussions" },
      -- { "<leader>on", "<cmd>Octo notification list<cr>", desc = "List GitHub Notifications" },
      -- {
      --   "<leader>os",
      --   function()
      --     require("octo.utils").create_base_search_command({ include_current_repo = true })
      --   end,
      --   desc = "Search GitHub",
      -- },
    },
  },
}

return {
  -- release <leader>gd from LazyVim's default snacks_picker extra
  { "folke/snacks.nvim", keys = { { "<leader>gd", false } } },
  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    keys = {
      { "<leader>gd", "<cmd>CodeDiff<cr>", desc = "Diff Explorer (working tree)" },
    },
    opts = {
      explorer = {
        auto_open_on_cursor = true, -- open the diff for the file under cursor as you move with j/k, no <CR> needed
      },
    },
  },
}

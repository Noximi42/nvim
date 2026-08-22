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
        focus_on_select = true, -- jump into the modified (editable) pane after selecting a file
      },
      keymaps = {
        view = {
          next_hunk = "<C-n>", -- easier than ]c on German keyboards (AltGr+8, c)
          prev_hunk = "<C-p>",
        },
      },
    },
  },
}

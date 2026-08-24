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
    config = function(_, opts)
      require("codediff").setup(opts)
      -- disable smooth scrolling in codediff buffers
      local touched = {}
      local function in_codediff_tab()
        for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
          local name = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
          if vim.fn.fnamemodify(name, ":t"):match("^CodeDiff ") then
            return true
          end
        end
        return false
      end
      vim.api.nvim_create_autocmd("BufWinEnter", {
        callback = function(args)
          vim.schedule(function()
            if vim.api.nvim_buf_is_valid(args.buf) and in_codediff_tab() then
              vim.b[args.buf].snacks_scroll = false
              touched[args.buf] = true
            end
          end)
        end,
      })
      vim.api.nvim_create_autocmd("User", {
        pattern = "CodeDiffClose",
        callback = function()
          for buf in pairs(touched) do
            if vim.api.nvim_buf_is_valid(buf) then
              vim.b[buf].snacks_scroll = nil
            end
          end
          touched = {}
        end,
      })
    end,
  },
}

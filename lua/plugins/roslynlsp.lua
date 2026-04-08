return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {
      -- broad_search = false,
      -- filewatching = "off",
      -- lock_target = true,
      -- choose_target = function(targets)
      --   return vim.iter(targets):find(function(item)
      --     return string.match(item, "Digiholz%.Dev%.slnx$")
      --   end)
      -- end,
    },
    init = function()
      vim.lsp.config("roslyn", {
        settings = {
          ["csharp|completion"] = {
            dotnet_show_completion_items_from_unimported_namespaces = true,
          },
          ["csharp|symbol_search"] = { dotnet_search_reference_assemblies = true },
          ["csharp|code_lens"] = { dotnet_enable_references_code_lens = true },
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
          },
        },
      })
    end,
  },
}

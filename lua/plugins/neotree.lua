
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,       -- Show filtered items like dotfiles
        hide_dotfiles = false -- Do not hide dotfiles
      },
    },
    default_component_configs = {
      name = {
        use_git_status_colors = true,
        highlight_opened_files = true, -- Enable highlighting for opened files
      },
    },
    window = {
      mappings = {
        -- Enable cursor line in neo-tree
        ["<CR>"] = "open",
        ["o"] = "open",
      },
    },
  },
}

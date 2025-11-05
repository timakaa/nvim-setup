
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,       -- Show filtered items like dotfiles
        hide_dotfiles = false -- Do not hide dotfiles
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      components = {
        -- Custom component to show line count
        line_count = function(config, node, state)
          if node.type == "file" then
            local path = node:get_id()
            local success, lines = pcall(function()
              local file = io.open(path, "r")
              if not file then return 0 end
              local count = 0
              for _ in file:lines() do
                count = count + 1
              end
              file:close()
              return count
            end)
            
            if success and lines > 0 then
              return {
                text = string.format(" [%d]", lines),
                highlight = "NeoTreeDimText",
              }
            end
          end
          return {}
        end,
      },
      renderers = {
        file = {
          { "icon" },
          { "name", use_git_status_colors = true },
          { "line_count" },
          { "git_status", highlight = "NeoTreeDimText" },
        },
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
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.opt_local.number = true
          vim.opt_local.relativenumber = true
        end,
      },
    },
  },
}

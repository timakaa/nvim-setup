-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Neo-tree hover highlight
        NeoTreeCursorLine = { bg = "#2a2a2a" }, -- Dark gray background for hovered items
        -- Alternative: you can also use these highlight groups
        -- NeoTreeFileNameOpened = { bg = "#2a2a2a" },
        -- NeoTreeDirectoryName = { bg = "#2a2a2a" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- You can customize colors specifically for astrodark theme here
        NeoTreeCursorLine = { bg = "#3a3a3a" }, -- Slightly lighter for astrodark
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}

return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      enable = true,
      extra_groups = {
          "Normal",
          "NormalNC",
          "SignColumn",
          "LineNr",
          "CursorLineNr",
          "VertSplit",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
          "WinSeparator",
          "NvimTreeEndOfBuffer",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "CursorLine",
          "ColorColumn",
          "FoldColumn",
          "IndentBlanklineChar",
          -- Tab line transparency
          "TabLine",
          "TabLineFill",
          "TabLineSel",
          -- Additional status line groups
          "WinBar",
          "WinBarNC",
          -- Lualine groups (if using lualine)
          "lualine_a_normal",
          "lualine_b_normal",
          "lualine_c_normal",
          "lualine_x_normal",
          "lualine_y_normal",
          "lualine_z_normal",
          -- AstroNvim specific groups
          "AstroNvimTabline",
          "AstroNvimTablineFill",
          "AstroNvimTablineSel",
          "AstroNvimStatusLine",
          "AstroNvimWinbar",
          -- Heirline groups (AstroNvim's statusline)
          "Heirline",
          "HeirlineStatusLine",
          "HeirlineTabline",
          "HeirlineWinbar",
          -- NUI.nvim groups (used by Avante)
          "NuiComponentsTreeNodeText",
          "NuiComponentsTreeNodeSymbol",
          "NuiSplit",
          "NuiPopup",
          -- Avante transparency groups
          "AvanteTitle",
          "AvanteReversedTitle",
          "AvanteSubtitle",
          "AvanteReversedSubtitle",
          "AvanteThirdTitle",
          "AvanteReversedThirdTitle",
          "AvanteBorder",
          "AvanteVerticalSplit",
          "AvanteCodeBlock",
          "AvanteInlineCode",
          "AvantePopupHint",
          "AvanteConflictCurrent",
          "AvanteConflictCurrentLabel",
          "AvanteConflictIncoming",
          "AvanteConflictIncomingLabel",
          "AvanteConflictAncestor",
          "AvanteConflictAncestorLabel",
      },
      exclude = {},
    })
  end
}


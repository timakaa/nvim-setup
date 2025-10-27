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
          -- "ColorColumn",
          "FoldColumn",
          -- "IndentBlanklineChar",
      },
      exclude = {},
    })
  end
}


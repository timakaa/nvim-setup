vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = function(lines, _)
      require('vim.ui.clipboard.osc52').copy(lines)
    end,
    ['*'] = function(lines, _)
      require('vim.ui.clipboard.osc52').copy(lines)
    end,
  },
  paste = {
    ['+'] = function()
      return require('vim.ui.clipboard.osc52').paste()
    end,
    ['*'] = function()
      return require('vim.ui.clipboard.osc52').paste()
    end,
  },
}

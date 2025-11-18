-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "typescript",
      "javascript",
      "tsx",
      "cpp",
      -- add more arguments for adding more treesitter parsers
    },
  },
}

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "typescript-language-server", -- TypeScript/JavaScript LSP
        
        -- install formatters
        "stylua",
        "prettier", -- JavaScript/TypeScript/JSX/TSX formatter
        
        -- install linters
        "eslint_d", -- Fast ESLint daemon
        
        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}

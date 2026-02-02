return {
  {
    -- Mason LSP Config
    -- https://github.com/mason-org/mason-lspconfig.nvim
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
      }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  },
  {
    -- Nvim LSP Config
    -- https://github.com/neovim/nvim-lspconfig
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      -- Lua
      vim.lsp.config('lua_ls', {})
    end
  }
}

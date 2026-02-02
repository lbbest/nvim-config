return {
  {
    -- Mason LSP Config
    -- https://github.com/mason-org/mason-lspconfig.nvim
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "pyright",
        "vue_ls"
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
      -- Lua
      vim.lsp.config('lua_ls', {})
      -- Typescript
      vim.lsp.config('ts_ls', {})
      -- Python
      vim.lsp.config('pyright', {})
      -- Vue
      vim.lsp.config('vue_ls', {})
    end
  }
}

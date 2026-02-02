return {
  -- Treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  priority = 1000,
  build = ":TSUpdate",
  config = function()
    local ts = require 'nvim-treesitter' 

    local parsers = {
      "lua",
      "javascript",
      "typescript",
      "python",
      "yaml",
      "json",
      "markdown",
      "bash",
      "vim",
      "vimdoc",
      "html",
      "css",
      "scss",
      "tsx",
      "vue",  
    }

    -- Install parsing languages
    for _, parser in ipairs(parsers) do
      ts.install(parser)
    end

    -- Add folding
    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'

    -- Add highlighting
    vim.api.nvim_create_autocmd('FileType', {
      pattern = parsers,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
}

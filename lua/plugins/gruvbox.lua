return {
  -- Gruvbox theme
  -- https://github.com/ellisonleao/gruvbox.nvim/tree/main
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme gruvbox]])
  end,
}

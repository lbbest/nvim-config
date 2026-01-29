return {
  -- Indent Blankline
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    require("ibl").setup()
  end,
}

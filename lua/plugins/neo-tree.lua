return {
  -- Neotree
  -- https://github.com/nvim-neo-tree/neo-tree.nvim
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false, 
  config = function()
    -- Automatically show Neotree if opening directory
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function(data)
        local is_directory = vim.fn.isdirectory(data.file) == 1
        if (is_directory or vim.fn.argc() == 0) then
          vim.cmd("Neotree show")
        end
      end
    })
  end
}

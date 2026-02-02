-- Telescope
local builtin = require('telescope.builtin')
-- Ctrl + p
-- Find files
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
-- Ctrl + f
-- Find term
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope grep files' })

-- Neotree
-- Ctrl + n
-- Toggle file tree
vim.keymap.set('n', '<C-n>', ':Neotree toggle filesystem left<CR>')
-- Ctrl + g
-- Open git status
vim.keymap.set('n', '<C-g>', ':Neotree toggle git_status float<CR>')

-- Language Server
-- Shift + k
-- View documentation
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-- g + d
-- Go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
-- Ctrl + .
-- View code actions
vim.keymap.set('n', '<C-.>', vim.lsp.buf.code_action, {})

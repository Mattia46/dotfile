-- space bar leader key
vim.g.mapleader = ","

-- save, quit
vim.keymap.set('i', 'jj', '<ESC>:wa<CR>')

-- yank to clipboard
vim.keymap.set({"n", "v"}, "y", [["+y]])
-- yank line to clipboard
vim.keymap.set("n", "yy", [["+Y]])

-- delete without yanking
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- search and replace the word under cursor in the file with <leader>s
vim.keymap.set("n", "<leader>/", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- show lint error message in a window + allow to jump in and copy the error
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic in float" })

vim.wo.colorcolumn = '80'

vim.keymap.set('n', '/', '/\\v')
vim.keymap.set('n', '<TAB>', '<C-W><C-W>')
vim.keymap.set('n', '<Leader>mn', ':%!jq .<CR>')

-- Enable search highlighting
vim.opt.hlsearch = true
-- Enable incremental search highlighting
vim.opt.incsearch = true

-- Automatically resize active split to 110 width
vim.api.nvim_create_autocmd('WinEnter', {
  group = vim.api.nvim_create_augroup('ReduceNoise', { clear = true }),
  callback = function()
    vim.opt.winwidth = 100
    vim.cmd('wincmd =')
  end,
})

-- remap "+p to p for Mac in order to paste from outside the terminal
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true, silent = true })

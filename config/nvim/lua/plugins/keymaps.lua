-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")

-- tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR> <c-w>=')

-- format code using LSP
vim.keymap.set("n", "<leader>i", vim.lsp.buf.format)

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

vim.keymap.set('n', '<leader>gd', ":lua require('goto-preview').goto_preview_definition()<CR>")
vim.keymap.set('n', '<leader>gt', ":lua require('goto-preview').goto_preview_type_definition()<CR>")
vim.keymap.set('n', '<leader>gi', ":lua require('goto-preview').goto_preview_implementation()<CR>")
vim.keymap.set('n', '<leader>gp', ":lua require('goto-preview').close_all_win()<CR>")

-- fugitive
vim.keymap.set('n', '<leader>gs', ':Git<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gd', ':Gvdiff<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ge', ':Gedit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gm', ':diffget //2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>go', ':diffget //3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gu', ':diffupdate<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', ':Gread<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gw', ':Gwrite<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gl', ':Glog -- % copen<CR>', { noremap = true, silent = true })

-- The silver searcher => results in ctrlp
vim.g.ackprg = 'ag --vimgrep'

if vim.fn.executable('ag') == 1 then
  vim.opt.grepprg = 'ag --nogroup --nocolor'
  vim.g.ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  vim.g.ctrlp_use_caching = 0
end

vim.g.ctrlp_max_files = 0

-- Search the word under the cursor or with K
vim.keymap.set('n', 'K', ':grep! "\\b<C-R><C-W>\\b"<CR>:cw<CR>')

-- Bind \ (backward slash) to Ag search shortcut
vim.api.nvim_create_user_command('Ag', 'silent! grep! <args>|cwindow|redraw!', { nargs = '+' })
vim.keymap.set('n', '\\', ':Ag<SPACE>')


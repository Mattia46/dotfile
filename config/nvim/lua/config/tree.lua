-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "s", action = "vsplit"},
      }
    }
  },
  filters = { exclude = { ".gitignore" } }
})


-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    },
    layout_strategy = "horizontal",
    layout_config = {
      preview_width = 0.6,
      vertical = {
        size = {
          width = "95%",
          height = "95%",
        },
      },
    },
  },
}


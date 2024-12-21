-- ctrlp ignore files listed in .gitignore
vim.g.ctrlp_user_command = 'git ls-files -co --exclude-standard'

-- Optional: Custom, always ignored patterns
vim.g.ctrlp_custom_ignore = {
  'node_modules',    -- Ignore node_modules
  '.git',            -- Ignore .git directory
  'build',           -- Ignore build directories
  'dist',            -- Ignore dist directories
}

vim.g.ctrlp_max_files = 1000 -- Limit the number of files shown
vim.g.ctrlp_show_hidden = 0  -- Do not show hidden files by default


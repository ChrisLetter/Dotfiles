-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- making sure the new line is not deleted --
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufWritePost" }, {
  pattern = "*",
  command = "set eol",
})

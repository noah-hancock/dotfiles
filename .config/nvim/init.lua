-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("oil").setup()

if vim.g.neovide then
  vim.o.guifont = "FantasqueSansM Nerd Font:h14"
end

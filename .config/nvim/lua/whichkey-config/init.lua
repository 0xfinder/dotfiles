local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save and Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"},
  f = {":Telescope find_files<CR>", "Telescope Find Files"},
  r = {":Telescope live_grep<CR>", "Telescope Live Grep"},
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

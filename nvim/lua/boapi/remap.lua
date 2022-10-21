local nnoremap = require('boapi.keymap').nnoremap
local inoremap = require('boapi.keymap').inoremap
local vnoremap = require('boapi.keymap').vnoremap
local noremap = require('boapi.keymap').noremap

-- =========================================================== --
-- quick access of netrw
-- =========================================================== --
nnoremap('<leader>jk', '<CMD>Ex<CR>')

-- =========================================================== --
-- moving lines quick actions
-- =========================================================== --
nnoremap('<C-j>', '<CMD>:m .+1<CR>==') -- move line down by one
nnoremap('<C-k>', '<CMD>:m .-2<CR>==') -- move line up by one
inoremap('<C-j>', '<ESC><CMD>:m .+1<CR>==') -- move line down by one
inoremap('<C-k>', '<ESC><CMD>:m .-2<CR>==') -- move line up by one
vnoremap('<C-j>', ":m '>+1<CR>gv=gv") -- move line down by one
vnoremap('<C-k>', ":m '<-2<CR>gv=gv") -- move line up by one

-- =========================================================== --
-- telescope quick actions
-- =========================================================== --
nnoremap('<leader>ff', '<CMD>Telescope find_files<CR>')
nnoremap('<leader>gf', '<CMD>Telescope git_files<CR>')
nnoremap('<leader>gc', '<CMD>Telescope git_commits<CR>')
nnoremap('<leader>ts', '<CMD>Telescope treesitter<CR>')
nnoremap('<leader>fb', '<CMD>Telescope file_browser<CR>')

-- =========================================================== --
-- Git quick actions
-- =========================================================== --
nnoremap('<leader>gg', '<CMD>LazyGit<CR>') -- open LazyGit

-- =========================================================== --
-- FTerm quick actions
-- =========================================================== --
nnoremap('<leader>ft', '<CMD>FTermOpen<CR>')

-- =========================================================== --
-- Harpoon quick actions
-- =========================================================== --
nnoremap('<leader>hh', '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>') -- open menu
nnoremap('<leader>hs', '<CMD>lua require("harpoon.mark").add_file()<CR>') -- set mark on file
nnoremap('<leader>hr', '<CMD>lua require("harpoon.mark").rm_file()<CR>') -- remove mark from file
nnoremap('<leader>hc', '<CMD>lua require("harpoon.mark").clear_all()<CR>') -- clear all marks

-- =========================================================== --
-- disable arrow keys normal, visual and operator-pending mode
-- =========================================================== --
noremap('<up>', '<nop>')
noremap('<right>', '<nop>')
noremap('<down>', '<nop>')
noremap('<left>', '<nop>')

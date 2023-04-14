local nnoremap = require("boapi.keymap").nnoremap
local inoremap = require("boapi.keymap").inoremap
local vnoremap = require("boapi.keymap").vnoremap
local noremap = require("boapi.keymap").noremap

-- =========================================================== --
-- general
-- =========================================================== --
nnoremap("<leader>jk", "<CMD>Ex<CR>") -- quick access for netrw
nnoremap("<leader>nh", "<CMD>noh<CR>") -- remove highlighting from last search

-- =========================================================== --
-- moving lines quick actions
-- =========================================================== --
nnoremap("<C-j>", "<CMD>:m .+1<CR>==") -- move line down by one
nnoremap("<C-k>", "<CMD>:m .-2<CR>==") -- move line up by one
inoremap("<C-j>", "<ESC><CMD>:m .+1<CR>==gi") -- move line down by one
inoremap("<C-k>", "<ESC><CMD>:m .-2<CR>==gi") -- move line up by one
vnoremap("<C-j>", ":m '>+1<CR>gv=gv") -- move line down by one
vnoremap("<C-k>", ":m '<-2<CR>gv=gv") -- move line up by one

-- =========================================================== --
-- adjust default movements
-- =========================================================== --
nnoremap("<C-u>", "<C-u>zz") -- move line down by one
nnoremap("<C-d>", "<C-d>zz") -- move line up by one
nnoremap("n", "nzz") -- move line down by one

-- =========================================================== --
-- telescope quick actions
-- =========================================================== --
nnoremap("<leader>ff", "<CMD>Telescope find_files<CR>")
nnoremap("<leader>gf", "<CMD>Telescope git_files<CR>")
nnoremap("<leader>gc", "<CMD>Telescope git_commits<CR>")
nnoremap("<leader>ts", "<CMD>Telescope treesitter<CR>")
nnoremap("<leader>fb", "<CMD>Telescope file_browser<CR>")
nnoremap("<leader>gs", "<CMD>Telescope grep_string<CR>")
nnoremap("<leader>tt", "<CMD>TodoTelescope<CR>")

-- =========================================================== --
-- Git quick actions
-- =========================================================== --
nnoremap("<leader>gg", "<CMD>LazyGit<CR>") -- open LazyGit

-- =========================================================== --
-- Undo-tree quick actions
-- =========================================================== --
nnoremap("<leader>t", "<CMD>UndotreeShow<CR><CMD>UndotreeFocus<CR>") -- open undo-tree panel

-- =========================================================== --
-- Harpoon quick actions
-- =========================================================== --
nnoremap("<leader>hh", '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>') -- open menu
nnoremap("<leader>hs", '<CMD>lua require("harpoon.mark").add_file()<CR>') -- set mark on file
nnoremap("<leader>hr", '<CMD>lua require("harpoon.mark").rm_file()<CR>') -- remove mark from file
nnoremap("<leader>hc", '<CMD>lua require("harpoon.mark").clear_all()<CR>') -- clear all marks

-- =========================================================== --
-- Lsp Saga actions
-- =========================================================== --
nnoremap("<leader>ca", "<CMD>Lspsaga code_action<CR>") -- open code action menu if available
vnoremap("<leader>ca", "<CMD>Lspsaga code_action<CR>") -- open code action menu if available
nnoremap("pd", "<cmd>Lspsaga peek_definition<CR>") -- show definition in floating window
nnoremap("gd", "<cmd>Lspsaga goto_definition<CR>") -- show definition in floating window
nnoremap("<leader>o", "<cmd>Lspsaga outline<CR>") -- show outline window

-- =========================================================== --
-- switching tabs
-- =========================================================== --
nnoremap("<C-s>", "<CMD>SwitchTab<CR>") -- call auto command in normal mode
inoremap("<C-s>", "<CMD>SwitchTab<CR>") -- call auto command in insert mode
vnoremap("<C-s>", "<CMD>SwitchTab<CR>") -- call auto command in visual mode

-- =========================================================== --
-- disable arrow keys normal, visual and operator-pending mode
-- =========================================================== --
noremap("<up>", "<nop>")
noremap("<right>", "<nop>")
noremap("<down>", "<nop>")
noremap("<left>", "<nop>")

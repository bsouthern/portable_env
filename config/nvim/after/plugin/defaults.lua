local map = vim.api.nvim_set_keymap
local opt = {noremap=true,silent=true}

-- Escape
map("i", "jk",       "<Esc>", opt)
map("v", "jk",       "<Esc>", opt)

-- Splits
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Telescope
map("n", "<Leader>f",      "<cmd>Telescope find_files<CR>", opt)
-- map("n", "<Leader>g",      "<cmd>Telescope live_grep<CR>",  opt)
-- map("n", "<Leader>m",      "<cmd>Telescope marks<CR>",      opt)
map("n", "<Leader>b",      "<cmd>Telescope buffers<CR>",    opt)
-- map("n", "<Leader><Space>","<cmd>Telescope buffers<CR>",    opt)

-- Explorer
map("n", "<Leader>e", "<cmd>:NvimTreeToggle<CR>", opt)

-- Manage tabs
map("n", "tn",       "<cmd>tabnew<CR>",   opt)
map("n", "tq",       "<cmd>tabclose<CR>", opt)
map("n", "H",  "<cmd>tabprev<CR>",  opt)
map("n", "L", "<cmd>tabnext<CR>",  opt)

map("n", "<S-Left>", "<Home>", opt)
map("i", "<S-Left>", "<Home>", opt)
map("n", "<S-Right>", "<End>", opt)
map("i", "<S-Right>", "<End>", opt)

map("n", "\\v",       "<cmd>:vs<CR>", opt)
map("n", "\\h",       "<cmd>:sp<CR>", opt)

-- Smart manual identation
map("v", ">",       ">gv", opt)
map("v", "<lt>",    "<gv", opt)
map("v", "<Tab>",   ">gv", opt)
map("v", "<S-Tab>", "<gv", opt)
map("n", "<Tab>",   ">>",  opt)
map("n", "<S-Tab>", "<<",  opt)

-- The system clipboard
map("v", "<C-y>",   '"+yy', opt)
map("n", "<C-y>",   '<cmd>"+yy', opt)

map("n", "<C-p>",   '"+p', opt)
map("i", "<C-p>",   '<cmd>"+p', opt)

-- Timeoutlen
vim.opt.timeoutlen = 200
-- Nim
vim.cmd([[
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })
]])
vim.o.foldlevelstart = 99

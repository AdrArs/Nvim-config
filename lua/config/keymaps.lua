local map = vim.keymap.set

-- Terminal

map("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Navigate windows from anymode

map("t", "<A-h>", "<C-\\><C-n><C-w>h")
map("t", "<A-j>", "<C-\\><C-n><C-w>j")
map("t", "<A-k>", "<C-\\><C-n><C-w>k")
map("t", "<A-l>", "<C-\\><C-n><C-w>l")
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")
map("n", "'x", "<C-w>x")

-- other maps

map("n", "<leader>t", ":ToggleTerm<CR>")

-- Nvim-tree


-- go back to previous buffer
map("n","<C-h>", ":bp<CR>")

-- go back to next buffer
map("n","<C-l>", ":bn<CR>")
-- close buffer
map("n","'d", ":bd<CR>")

-- V split
map("n", "'v", ":vsplit<CR>")

-- H split
map("n", "'h", ":sp<CR>")

-- NERDTree
map("n", "<C-n>", ":NvimTreeToggle<CR>")
map("n", "<C-,>", ":NvimTreeFindFile<CR>")


-- quit a viewport
map("n", "'q", "<C-w>q")

-- copiar del portapapeles

map("n", "'p", '"+p')
map("v", "'c", '"+y')






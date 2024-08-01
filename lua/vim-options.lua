-- leader key
vim.g.mapleader = " "

-- set conceal level
vim.cmd("set conceallevel=2")

-- better scrolling
vim.o.scrolloff = 8

-- set tab spacing
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- pane navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Select all
vim.keymap.set("v", "<C-A>", "gg<S-v>G")

-- Split window
vim.keymap.set("n", "ss", ":split<CR> :wincmd j<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR> :wincmd l<CR>", opts)

-- Change behaviour of <c-d> and <c-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move lines in visual mode
vim.keymap.set("v", "<C-d>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-u>", ":m '>-2<CR>gv=gv")

-- Keep Cursor in place for "J"
vim.keymap.set("n", "J", "mzJ`z")

-- Add yank to system buffer
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Worst remap of all time
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Advanced word replace
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Dismiss Noice message
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>")

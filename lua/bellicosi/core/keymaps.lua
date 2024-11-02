vim.g.mapleader = " "

local keymap = vim.keymap --for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

--window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split window equally" }) --split window equally
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" }) -- close current split

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tat

-- Keybindings for macOS
-- Note: In terminal, Cmd is usually mapped to Super/D and Option to Alt/M

-- Define common options at the beginning
local opts = { noremap = true, silent = true }

-- Key mappings
-- Command + Left/Right for start/end of line
keymap.set("n", "<D-Left>", "^", { noremap = true, desc = "Go to start of line" })
keymap.set("n", "<D-Right>", "$", { noremap = true, desc = "Go to end of line" })
keymap.set("i", "<D-Left>", "<ESC>^i", { noremap = true, desc = "Go to start of line" })
keymap.set("i", "<D-Right>", "<ESC>$a", { noremap = true, desc = "Go to end of line" })

-- Option + Left/Right for word movement
keymap.set("n", "<M-Left>", "b", { noremap = true, desc = "Move backward by word" })
keymap.set("n", "<M-Right>", "w", { noremap = true, desc = "Move forward by word" })
keymap.set("i", "<M-Left>", "<ESC>bi", { noremap = true, desc = "Move backward by word" })
keymap.set("i", "<M-Right>", "<ESC>wi", { noremap = true, desc = "Move forward by word" })

-- Scrolling (using common options table `opts`)
keymap.set("n", "<C-d>", "<C-d>zz", opts) -- Scroll down half page and center
keymap.set("n", "<C-u>", "<C-u>zz", opts) -- Scroll up half page and center
keymap.set("n", "<C-f>", "<C-f>zz", opts) -- Scroll down full page and center
keymap.set("n", "<C-b>", "<C-b>zz", opts) -- Scroll up full page and center

-- Undo/Redo mappings
keymap.set("n", "<D-z>", "u", { noremap = true, silent = true }) -- Normal mode undo
keymap.set("n", "<D-Z>", "<C-r>", { noremap = true, silent = true }) -- Normal mode redo
keymap.set("i", "<D-z>", "<C-o>u", { noremap = true, silent = true }) -- Insert mode undo
keymap.set("i", "<D-Z>", "<C-o><C-r>", { noremap = true, silent = true }) -- Insert mode redo

--selecting everything
-- Select all text
keymap.set("n", "<D-a>", "ggVG", { noremap = true, desc = "Select all text" })
-- Enable yank (copy) with Command + C and delete with Command + X
keymap.set("v", "<D-c>", '"+y', { noremap = true, desc = "Copy selected text" })
keymap.set("v", "<D-x>", '"+d', { noremap = true, desc = "Cut selected text" })

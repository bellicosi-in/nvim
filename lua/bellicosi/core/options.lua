vim.cmd("let g:netrw_liststyle = 3")


local opt = vim.opt

opt.relativenumber = true
opt.number = true


--tabes & indentation
opt.tabstop = 4		-- 4 spaces for tabs
opt.shiftwidth  = 4	--4 spaces for indentation
opt.expandtab = true	--expand tab to spaces
opt.autoindent = true	--copy indent from current line when starting new one
opt.wrap = false

--search settings
opt.ignorecase = true 	--ignore case when searching
opt.smartcase = true 	--if you include mixed case in your search, assumes you want case sensitive

opt.cursorline = true

--turn on termgui colors for tokyonight colorscheme ot work
--have use iterm2 or any other true color terminal

opt.termguicolors = true
opt.background = "dark" --colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" --show sign column so that text doesnt shift

--backspace
opt.backspace = "indent,eol,start" --allow backspace on indent, end of line, insert mode start position

--clipboard
opt.clipboard:append("unnamedplus") --use system clipboard as default register


--split windowsa
opt.splitright = true --split vertical window to the right
opt.splitbelow = true --split horizontal window to the bottom

--turn off swapfile
opt.swapfile = false

-- Scrolling
opt.scrolloff = 8                -- Minimum lines to keep above and below cursor
opt.sidescrolloff = 8           -- Minimum columns to keep left and right of cursor
opt.smoothscroll = true         -- Enable smooth scrolling
opt.mouse = 'a'                 -- Enable mouse support in all modes

-- Command line
opt.cmdheight = 1              -- Height of command line
opt.showmode = true            -- Show current mode
opt.showcmd = true            -- Show command in bottom bar
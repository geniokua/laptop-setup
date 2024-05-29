vim.cmd("let g:netrw_liststyle =3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if include mixed case in search, assumes want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme (need true color terminal e.g. iterm2)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that are light/dark will be dark
opt.signcolumn = "yes" -- show sign column so text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- vertical
opt.splitbelow = true -- horizontal

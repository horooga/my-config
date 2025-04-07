local o = vim.opt

vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
vim.g.lazyvim_python_lsp = "pyright"

o.clipboard = "unnamedplus"
o.completeopt = { "menu", "menuone", "noselect" }
o.syntax = "on"
o.mouse = "a"

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

o.number = true
o.cursorline = true
o.splitbelow = true
o.splitright = true

o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.ruler = true
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true

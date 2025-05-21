local k = vim.keymap

-- {"n", "v"}, "p", "paste to a next line"
-- {"n", "v"}, "s", "jump to a entered letter"

--file
k.set({ "n", "v", "i" }, ",q", "<Esc>:q!<CR>", { noremap = true, silent = true })
k.set({ "n", "v", "i" }, ",e", "<Esc>:wq<CR>", { noremap = true, silent = true })
-- save and normal mode
k.set({ "n", "v", "i" }, ",s", "<Esc>:w<CR>", { noremap = true, silent = true })

--modes
-- {"i"}, "i", "insert mode"
k.set({ "n", "i" }, ",v", "<Esc>v", { noremap = true, silent = true })
k.set({ "n", "i", "v" }, ",t", "<Esc>:!", { noremap = true, silent = true })
k.set({ "n", "i", "v" }, ",r", "<Esc>:%s/", { noremap = true, silent = true })

--lines
-- {"n"}, "V", "select current line"
k.set({ "n", "i" }, ",b", "<Esc>^i", { noremap = true, silent = true })
k.set({ "n", "i" }, ",a", "<Esc>A", { noremap = true, silent = true })
k.set({ "n", "i" }, ",l", "<Esc>yy", { noremap = true, silent = true })
k.set({ "n", "i" }, ",d", "<Esc>Vx", { noremap = true, silent = true })
k.set({ "n", "i" }, ",c", "<Esc>Vy", { noremap = true, silent = true })

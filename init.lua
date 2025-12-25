-- Leader first (must come before keymaps)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Line numbers (relative for quick jumps with j/k)
vim.opt.number = true
vim.opt.relativenumber = true

-- UI
vim.opt.mouse = "a"
vim.opt.showmode = true
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3 		-- global statusline
vim.opt.termguicolors = true
vim.opt.pumheight = 10		-- popup menu height
-- Colorscheme hehe
vim.cmd [[
	syntax off
	colorscheme default
	hi Normal guibg=#000000 ctermbg=0
]]

-- Clipboard (OSC 52 for SSH, system clipboard otherwise)
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- Search (smart: case insensitive unless you use uppercase)
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "nosplit"		-- preview for :s
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"

-- Indentation // Linus style babyyyy
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = false
vim.opt.shiftround = true

-- Display
vim.opt.wrap = false
vim.opt.scrolloff = 8  		-- keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8
vim.opt.smoothscroll = true

-- Folding (indent-based, start all open)
vim.opt.foldlevel = 99
vim.opt.foldmethod = "indent"

-- Persistence (undo survives restart, like it should)
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.autowrite = true	-- save before :make, :cc, etc
vim.opt.confirm = true

-- Timing (snappier responses)
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300

-- Misc
vim.opt.virtualedit = "block"	-- free cursor movement in visual block
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })
vim.g.markdown_recommended_style = 0

-- Keymaps
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")	-- clear search with Esc
vim.keymap.set("n", "<leader>ff", ":Files<CR>")		-- fzf files
vim.keymap.set("n", "<leader>b", ":Buffers<CR>")	-- fzf buffers
vim.keymap.set("n", "<leader>g", ":Rg<CR>")		-- fzf grep

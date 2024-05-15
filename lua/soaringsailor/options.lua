vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.wo.number = true -- enable line numbers
vim.wo.relativenumber = true -- enable relative line numbers

local opt = vim.opt

if not vim.env.SSH_TTY then
  -- only set clipboard if not in ssh, to make sure the OSC 52
  -- integration works automatically. Requires Neovim >= 0.10.0
  opt.clipboard = "unnamedplus" -- Sync with system clipboard
end

if not vim.g.vscode then
  opt.timeoutlen = 300 -- lower timeout for quick retrigger when not in vs code
end

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true -- enable smooth scrolling for later vim versions
end

opt.autowrite = true -- automatically write file on :next etc.
opt.completeopt = "menu,menuone,preview,noselect"
opt.confirm = true -- ask for confirmation upon exiting with modified content
opt.cursorline = true -- highlight line of cursor
opt.expandtab = true -- use spaces instead of tabs
opt.formatoptions = "jcqrlnt" -- formatting options
opt.smartcase = true -- ignore case when everything is typed lowercase
opt.smartindent = true -- automatically add indents at fitting times
opt.laststatus = 2 -- only last window status bar
opt.list = true -- show some invisible characters
opt.pumblend = 10 -- pop up menu transparency
opt.pumheight = 10 -- pop up menu max entries
opt.scrolloff = 5 -- Lines of context at top/bottom
opt.sidescrolloff = 8 -- number of lines when side scrolling for nowrap
opt.sessionoptions = { "buffers", "curdir", "folds", "tabpages", "terminal", "winsize", "skiprtp", "options", "localoptions" } -- what is restored when saving a session
opt.shiftwidth = 2 -- number of spaces for indent
opt.tabstop = 2 -- tab number of spaces
opt.shiftround = true -- round to shiftwidth size when indenting
opt.shortmess:append({ W = true, I = true, c = true, C = true }) -- determine which messages to not show
opt.showmode = false -- we see the mode on the status line
opt.signcolumn =  "yes" -- always show debugging bar to not shift text
opt.spelllang = { "en", "de", "nl" } -- spelling languages
opt.splitkeep = "screen" -- scroll bevaviour when resizing splits
opt.termguicolors = true -- enable true color support
opt.undofile = true -- save buffer undos on file write
opt.undolevels = 10000 -- increase kept changes
opt.updatetime = 500 -- lower time needed to save to swap and trigger CursorHold
opt.virtualedit = "block" -- allow non-charachters to be selected in visual select block mode
opt.wildmode = "longest:full,full" -- Completion mode for command line
opt.winminwidth = 5 -- minimum size of a window
opt.foldlevel = 99 -- don't automatically close folds
opt.conceallevel = 0 -- disable conceal i.e. markdown bold
opt.mouse = "" -- disable mouse support
opt.mousehide = true -- hide mouse if possible
opt.wrap = true -- wrap text if longer than window
opt.linebreak = true -- break lines at better poitions
opt.breakindent = true -- indent wrapped lines
opt.splitright = true -- Always vsplit to right
opt.splitbelow = true -- always hsplit below

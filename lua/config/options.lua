-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = false

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Text wrapping
vim.opt.wrap = false

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Visual settings
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Update time
vim.opt.updatetime = 50

-- Mouse support
vim.opt.mouse = "a"

-- Completion
vim.opt.completeopt = { "menuone", "noselect" }

-- Cursor shape - always use vertical line
vim.opt.guicursor = "n-v-c-sm:ver25,i-ci-ve:ver25,r-cr-o:hor20"

-- Netrw settings
vim.g.netrw_liststyle = 3        -- Tree view
vim.g.netrw_banner = 0           -- Remove banner
vim.g.netrw_browse_split = 4     -- Open files in previous window
vim.g.netrw_altv = 1             -- Right splitting
vim.g.netrw_winsize = 25         -- 25% of screen for netrw
vim.g.netrw_keepdir = 0          -- Keep current directory synced
vim.g.netrw_localcopydircmd = 'cp -r'

-- Cursor behavior - make it more like GUI editors
vim.opt.virtualedit = "onemore"  -- Allow cursor to go one character past end of line
vim.opt.selection = "exclusive"  -- Don't include character under cursor in selection
vim.opt.startofline = false     -- Keep cursor column when moving between lines
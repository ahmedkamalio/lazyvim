-- Set leader key (already set in lazy.lua but good to have here for reference)
vim.g.mapleader = " "

-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Better moving of selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Keep cursor centered when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- Paste without losing register
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without losing register" })

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to system clipboard" })

-- Delete without copying to register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete without copying to register" })

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item" })
vim.keymap.set("n", "<leader>ln", "<cmd>lnext<CR>zz", { desc = "Next location list item" })
vim.keymap.set("n", "<leader>lp", "<cmd>lprev<CR>zz", { desc = "Previous location list item" })

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor" })

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file executable" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to window below" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to window above" })

-- Window resizing
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- GUI-style cursor behavior
-- Make paste work "before" cursor position and position cursor after last pasted character
vim.keymap.set("n", "p", "i<C-r>\"<Esc>`]a<Esc>", { desc = "Paste before cursor, cursor after last pasted char" })
vim.keymap.set("n", "P", "a<C-r>\"<Esc>", { desc = "Paste after cursor" })

-- Make $ go to true end of line (after last character)
vim.keymap.set({"n", "v"}, "$", "$l", { desc = "Go to true end of line" })

-- macOS-style home/end keys (fn+arrow keys)
vim.keymap.set({"n", "v", "i"}, "<Home>", function()
  if vim.fn.mode() == "i" then
    return "<C-o>^"
  else
    return "^"
  end
end, { expr = true, desc = "Go to start of line" })

vim.keymap.set({"n", "v", "i"}, "<End>", function()
  if vim.fn.mode() == "i" then
    return "<C-o>$<C-o>l"
  else
    return "$l"
  end
end, { expr = true, desc = "Go to true end of line" })
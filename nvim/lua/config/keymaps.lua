-- keybinding.lua

-- Set keybindings for splitting windows
vim.api.nvim_set_keymap("n", "<C-w>v", ":vsplit<CR>", { noremap = true, silent = true, desc = "Vertical Split" }) -- Ctrl + w v
vim.api.nvim_set_keymap("n", "<C-w>s", ":split<CR>", { noremap = true, silent = true, desc = "Horizontal Split" }) -- Ctrl + w s

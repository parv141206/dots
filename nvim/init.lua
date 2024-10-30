-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("neo-tree").setup({})
require("neo-tree-config")
-- Set your username for instant.nvim
vim.g.instant_username = "parv141206"  -- Replace with your desired username

-- Optional: Configure live-share settings if needed
require("live-share").setup({
    -- Add any specific configurations here
})
vim.opt.fillchars = { eob = '~' }  -- Show tildes on empty lines
vim.opt.number = true               -- Show absolute line numbers
vim.opt.relativenumber = true  

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
-- Run commands on startup
--vim.api.nvim_create_autocmd("VimEnter", {
--    callback = function()
        -- Split the window
--        vim.cmd("split")
        -- Open terminal with PowerShell
--        vim.cmd("terminal pwsh")
        -- Execute leader + cs (assuming 'cs' is mapped to a command)
--    end,
--})
require("bufferline").setup {
  options = {
    -- Other options...
    always_show_bufferline = false, -- Show bufferline at all times
    custom_filter = function(buf_number, buf_numbers)
      local buf_name = vim.fn.bufname(buf_number)
      -- Exclude terminal buffers even if it ends with pwsh or .exe
      if vim.bo[buf_number].filetype == "terminal" or buf_name == "term://*" or buf_name:match("%.exe$") or buf_name:match("%.pwsh$") then
        return false
      end
      return true -- Show all other buffers
    end,
  },
}
vim.opt.fillchars = { eob = '~' }  -- Show tildes on empty lines
vim.opt.number = true               -- Show absolute line numbers
vim.opt.relativenumber = true  
vim.opt.guifont = "Cascadia Code:h14"

-- Highlight groups with italic styles
vim.api.nvim_set_hl(0, "Comment", { italic = true })
vim.api.nvim_set_hl(0, "Function", { italic = true })
vim.api.nvim_set_hl(0, "Identifier", { italic = true })
vim.api.nvim_set_hl(0, "Type", { italic = true })


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
if vim.fn.has("gui_running") then
  vim.opt.guifont = "Cascadia Code:h12" -- Adjust the size as needed
  vim.cmd("set guifont=Cascadia\\ Code:h12") -- Use escape for spaces
end
vim.opt.guifont = "Cascadia Code:h12"
vim.cmd("set guifont=Cascadia\\ Code:h12")
require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  install = {
    colorscheme = {
      "dracula",
      "projekt0n/github-nvim-theme",
      "folke/tokyonight.nvim",
      "navarasu/onedark.nvim",
      "rebelot/kanagawa.nvim",
      "sainnhe/gruvbox-material",
      "Mofiqul/vscode.nvim",
      "shaunsingh/nord.nvim",
      "lunarvim/darkplus.nvim",
      "EdenEast/nightfox.nvim",
      "catppuccin/nvim",
      "nyoom-engineering/oxocarbon.nvim",
      "rose-pine/neovim",
      "sainnhe/everforest",
      -- Add more themes as needed
    },
  }, -- Default colorscheme list
  checker = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

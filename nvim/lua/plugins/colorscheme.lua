return {
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 }, -- Ensure high priority
  { "rose-pine/neovim", name = "rose-pine" },
  { "sainnhe/everforest" },
  { "bluz71/vim-nightfly-colors" },
  { "NLKNguyen/papercolor-theme" },
  { "romainl/Apprentice" },

  -- Additional popular dark themes
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "marko-cerovac/material.nvim" },
  { "sainnhe/sonokai" },
  { "shaunsingh/nord.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "sainnhe/gruvbox-material" },
  { "EdenEast/nightfox.nvim" },
  { "olivercederborg/poimandres.nvim" },
  { "alexmozaidze/palenight.nvim", lazy = true },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "palenight", -- Set default colorscheme to catppuccin
    },
  },

  -- Set up Catppuccin with flavors
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Choose your preferred flavor here (latte, frappe, macchiato, mocha)
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
        }
      })
      vim.cmd.colorscheme("catppuccin") -- Apply the colorscheme
    end,
    lazy = false, -- Load immediately
    priority = 1000, -- Ensure it loads first
  },
}

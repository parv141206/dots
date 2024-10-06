return {
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "catppuccin/nvim", name = "catppuccin", lazy = false },
  { "rose-pine/neovim", name = "rose-pine" },
  { "sainnhe/everforest" },
  { "bluz71/vim-nightfly-colors" },
  { "NLKNguyen/papercolor-theme" },
  { "romainl/Apprentice" },

  -- Additional popular dark themes
  { "folke/tokyonight.nvim" }, -- A clean, dark theme inspired by Tokyo Night
  { "navarasu/onedark.nvim" }, -- One Dark theme based on Atom's One Dark
  { "Mofiqul/vscode.nvim" }, -- VSCode-inspired theme
  { "marko-cerovac/material.nvim" }, -- Material design theme for Neovim
  { "sainnhe/sonokai" }, -- High contrast & vivid color scheme based on Monokai Pro
  { "shaunsingh/nord.nvim" }, -- Nord theme based on the Nord Color Palette
  { "projekt0n/github-nvim-theme" }, -- GitHub's Neovim themes
  { "sainnhe/gruvbox-material" }, -- Gruvbox with Material Palette
  { "EdenEast/nightfox.nvim" }, -- Highly customizable theme for Neovim
  { "olivercederborg/poimandres.nvim" }, -- Poimandres colorscheme for Neovim

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula", -- Default colorscheme to use
    },
  },
}

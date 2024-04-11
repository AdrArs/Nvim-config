return {
   --"sainnhe/sonokai",
   --"craftzdog/solarized-osaka.nvim",
   --"folke/tokyonight.nvim",
   "catppuccin/nvim",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins

      config = function()
         -- load the colorscheme here
         --vim.cmd([[colorscheme solarized-osaka]])
         --vim.cmd([[colorscheme sonokai]])
         vim.cmd([[colorscheme catppuccin]])
      end,



}


return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   event = "VeryLazy",
   main = "nvim-treesitter.configs",
   opts = {
      ensure_installed = {
         "lua",
         "luadoc",
         "java",
         "javascript",
         "c",
         "cpp",
         "css",
         "html",
         "sql",
      },
      highlight = {
         enable = true,
      },
      indent = {
         enable = true,
      },
   },
}





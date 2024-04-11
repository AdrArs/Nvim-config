return {

    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },

    config = function()
       require("lualine").setup {
         options = {
           --theme = "codedark",
           --theme = "sonokai",
           theme = "catppuccin",
           icons_enabled = true,
           globalstatus = true,
           omponent_separators = { left = '', right = ''},
           section_separators = { left = '', right = ''},
         },

         sections = {
            lualine_a = {{ "mode", upper = true }},
            lualine_b = {{'branch', icon = ''}, {"diagnostics", sources = {'nvim_lsp'}}},
            lualine_c = {{ "filename", file_status = true, symbols = {modified = ' ',readonly = ' ', newfile = ' 󰎔',unnamed = '[o ame]' } }},
            lualine_x = { {'fileformat', symbols = {unix = ''}}, 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
         },


         inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {{ "filename", file_status = true, path = 1, symbols = {modified = ' ',readonly = ' ', newfile = ' 󰎔',unnamed = '[o ame]' } }},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
         },
         tabline = {
            --[[lualine_a = {
               {
                  'buffers',
                  show_filename_only = true,   -- Shows shortened relative path when set to false.
                  hide_filename_extension = false,   -- Hide filename extension when set to true.
                  show_modified_status = true, -- Shows indicator when the buffer is modified.

                  mode = 0, -- 0: Shows buffer name

                  -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
                  use_mode_colors = false,

                  symbols = {
                     modified = ' ',      -- Text to show when the buffer is modified
                     directory =  '',     -- Text to show when the buffer is a directory
                     alternate_file = '',
                  },
               }
            }]]
         },
         winbar = {},
         inactive_winbar = {},
         extensions = {}
      }
   end,
}

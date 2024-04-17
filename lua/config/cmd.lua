
-- Cambiar el color de los números de línea en Neovim
vim.cmd('highlight CursorLineNr guifg=#C2CB61') -- Cambia el color del texto del número de línea de la línea actual
vim.cmd('highlight Pmenu guibg=none') -- menu
vim.cmd('highlight PmenuSel guibg=grey20') -- linea de seleccion en el menu
vim.cmd('highlight LineNr guifg=#FFFFFF')
vim.cmd('highlight LineNrAbove guifg=#899455')
vim.cmd('highlight LineNrBelow guifg=#899455')
vim.cmd('highlight Comment guifg=#7A7E85')	-- comentarios
vim.cmd('highlight Visual guifg=#E2E2DD guibg=#3A5279')
vim.cmd('highlight cursorline guibg=grey15')	-- resalta toda la linea donde esta el cursor
vim.cmd('highlight Identifier guifg=#E2E2DD')
vim.cmd('highlight Function guifg=#56A8F5')	-- funciones y metodos
vim.cmd('highlight Type guifg=#CF836D gui=italic')
vim.cmd('highlight Structure guifg=#E2E2DD')	-- nombre de la clase en llava
vim.cmd('highlight Constant guifg=#E2E2DD')
vim.cmd('highlight Statement guifg=#CC89C1')
vim.cmd('highlight Search guifg=#E3FE05 guibg=none ctermbg=0')	-- busqueda
vim.cmd('highlight MatchParen  guibg=none')	-- parentecis, llaves
vim.cmd('highlight Normal guifg=#E2E2DD')	-- palabras normales
vim.cmd('highlight String guifg=#5AAB73') -- resaltado de string


vim.cmd('set cursorline')



vim.o.termguicolors = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.shiftwidth=4
vim.o.smartindent = true
vim.o.mouse = false


-- Powershell as terminal

--[[if vim.fn.has('win32') == 1 then
  vim.o.shell = 'pwsh'
else
  vim.o.shell = 'powershell'
end
vim.o.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.o.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.o.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.o.shellquote = ''
vim.o.shellxquote = '']]--




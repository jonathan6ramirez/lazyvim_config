-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt -- for conciseness
local global = vim.g --This is for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- set the terminal shell to powershell
opt.shell = "PWSH.exe"

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the cursor line

-- Appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesnt shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

--The setup below will automativally configure connections without the need for manual input each time.

global.dbs = {
  --dev = "sqlserver://jramirez:@ENT/SQLEXPRESS/adventureworks",
  dev = "sqlserver://sa:Barcelona14ever@localhost/SQLEXPRESS/adventureworks",
}
-- data source=ENT-Surface\SQLEXPRESS;initial catalog=master;trusted_connection=true
--dev = "sqlserver://jramirez:@ENT/SQLEXPRESS/adventureworks?trusted_connection=true",

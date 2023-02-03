vim.opt.encoding = 'utf-8'

-- load all the plugins
require('plugins')

-- get config path
local cfg = vim.fn.stdpath('config')

-- load machine specific file if it exists
local custom_lua_file = 'custom_' .. vim.fn.hostname():lower()
if vim.fn.glob(cfg .. '/lua/' .. custom_lua_file .. '.lua') ~= '' then
    vim.g.custom_file_loaded = true
    require(custom_lua_file)
end

-- indent stuff
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- show hybrid line numbers
vim.opt.number = true
-- todo: make relative numbers show on keybinding instead
vim.opt.relativenumber = true

-- allow comments in JSON
vim.cmd([[autocmd FileType json syntax match Comment +\/\/.\+$+]])

-- set rulers todo: figure out how much can fit on phone/tablet
--vim.opt.colorcolumn = '80,100'

-- TODO: test: set whichwrap+=<,>,h,l,[,]

-- map : to space in normal mode (very useful)
--vim.cmd("nnoremap <space> :")

-- its a waste to make space only do commands as its not used that often
vim.cmd("nnoremap <space>; :")

-- often used
vim.cmd("nnoremap <space>q :q<CR>")
vim.cmd("nnoremap <space>w :w<CR>")
vim.cmd("nnoremap <space>e :e ")

---- coc recommended settings!! ----
-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- TODO: this could be removed if i made symbol highlighting a keybinding, may be annoying but may improve performance especially on tablet/phone
-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable delays and poor user experience
vim.opt.updatetime = 300

-- TODO: make it shown only in files that can be debugged / show the diagnostics...
-- Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/become resolved
--vim.opt.signcolumn = 'yes'


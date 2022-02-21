vim.cmd([[
    set keymap=russian-jcukenwin
    set iminsert=0
    set imsearch=0
    set autoread
    set noswapfile
    set updatetime=250
    set number
    set relativenumber
    set nowrap
    set cursorline
    let g:rehash256 = 1
    set termguicolors
    set background=dark
    set listchars=tab:⇢\ ,eol:¬,trail:·
    set fillchars+=vert:\ 
    set list
    set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
    set colorcolumn=80,120
    set ignorecase
    set tabstop=4
    set shiftwidth=4
    set smarttab
    set expandtab
    set smartindent
    set encoding=UTF-8
    set exrc
    set autoread
    colorscheme moonfly
    autocmd! BufRead * retab "replace all space on tab
    set autoread
    au CursorHold * checktime
    au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
]])

-- Space as leaderkey
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.floaterm_position = 'center'
vim.g.move_key_modifier = 'C'

vim.api.nvim_set_keymap(
'i', '<A-j>', '<down>', { noremap = true }
)
vim.api.nvim_set_keymap(
'i', '<A-k>', '<up>', { noremap = true }
)
vim.api.nvim_set_keymap(
'i', '<A-l>', '<right>', { noremap = true }
)
vim.api.nvim_set_keymap(
'i', '<A-h>', '<left>', { noremap = true }
)

vim.api.nvim_set_keymap(
'n', '<Leader>gn', '<cmd>GitGutterNextHunk<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>gp', '<cmd>GitGutterPrevHunk<cr>', { noremap = true }
)

vim.api.nvim_set_keymap(
'n', '<leader>tn', '<cmd>TestNearest<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>tf', '<cmd>TestFile<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>ts', '<cmd>TestSuite<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>tl', '<cmd>TestLast<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>tv', '<cmd>TestVisit<cr>', { noremap = true }
)

vim.api.nvim_set_keymap(
'n', '<leader>e', '<cmd>FloatermNew<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>et', '<cmd>FloatermToggle<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>ep', '<cmd>FloatermPrev<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>en', '<cmd>FloatermNext<cr>', { noremap = true }
)

vim.api.nvim_set_keymap(
'n', '<leader>cf', '<cmd>CtrlSFCwordPath<cr>', { noremap = true }
)

vim.g.Lf_WindowPosition = 'popup'
vim.g.Lf_PreviewInPopup = 1
vim.g.Lf_UseMemoryCache = 0
vim.g.vimspector_enable_mappings = 'HUMAN'

vim.g.doge_php_settings = {
  resolve_fqn = 0,
}

vim.g.vimspector_sign_priority = {
    vimspectorBP = 999,
    vimspectorBPCond = 999,
    vimspectorBPDisabled = 999,
    vimspectorPC = 999,
}

vim.api.nvim_set_keymap(
'n', '<leader>ai', '<cmd>PhpactorImportClass<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>an', '<cmd>PhpactorClassNew<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>am', '<cmd>PhpactorClassMove<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>aci', '<cmd>PhpactorClassInflect<cr>', { noremap = true }
)
vim.api.nvim_set_keymap(
'n', '<leader>ag', '<cmd>PhpactorGenerateAccessors<cr>', { noremap = true }
)

vim.api.nvim_set_keymap(
'n', '<leader>F', '<cmd>RnvimrToggle<cr>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
'n', '<leader><leader>w', '<cmd>HopWord<cr>', { noremap = true, silent = true }
)

vim.g.XkbSwitchEnabled = 1
vim.g.open_url_browser_default = "firefox-developer-edition"

vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_enable_bw = 1
vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'

vim.g.scrollbar_highlight = {
    head = Folded,
    body = Folded,
    tail = Folded,
}

vim.api.nvim_set_keymap(
'n', '<leader>f', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
'n', '<leader>b', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true }
)

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

-- vim.g.indentLine_char = '⠂'
-- vim.g.indentLine_color_term = 239
-- vim.g.indentLine_color_gui = "#D32F30"
-- vim.g.indentLine_color_tty_light = 7
-- vim.g.indentLine_color_dark = 1

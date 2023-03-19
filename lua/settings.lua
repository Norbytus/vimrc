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
    set fillchars+=vert:\·
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
    set spelllang=en,ru
    set spell!
    colorscheme oxocarbon
    set autoread
    au CursorHold * checktime
    au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    let test#php#phpunit#executable = 'docker exec -it ifunny-api-api-1 ./vendor/bin/phpunit'
    let test#php#behat#executable = 'docker exec -it ifunny-api-api-1 ./vendor/bin/behat'

    let g:test#php#codeception#executable = 'docker exec -it ifunny-api-api-1 /home/ifunny/api/vendor/bin/codecept'
    let g:test#php#codeception#options = '--env=v4 WithFixtures -c /home/ifunny/api/tests/functional/Api/codeception.yml'
    let g:test#echo_command = 1

    let test#strategy = {
    \ 'nearest': 'floaterm',
    \ 'file':    'floaterm',
    \ 'suite':   'floaterm',
    \}

    if !exists('g:test#php#codeception#file_pattern')
    let g:test#php#codeception#file_pattern =
    \ '\v((c|C)e(p|s)t\.php$)'
    endif
]])
    -- let test#php#codeception#executable = 'docker exec -it ifunny-api-api-1 /home/ifunny/api/vendor/bin/codecept --env=4 WithFixtures -c /home/ifunny/api/tests/functional/Api/codeception.yml'
    -- let g:test#php#codeception#options = '--env=v5 WithFixtures -c /home/ifunny/api/tests/functional/Api/codeception.yml'
    --autocmd! BufRead * retab "replace all space on tab

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
'n', 'tn', '<cmd>TestNearest<cr>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
'n', 'tf', '<cmd>TestFile<cr>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
'n', 'ts', '<cmd>TestSuite<cr>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
'n', 'tl', '<cmd>TestLast<cr>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
'n', 'tv', '<cmd>TestVisit<cr>', { noremap = true, silent = true }
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
vim.api.nvim_set_keymap('n', '<A-j>', ":MoveLine(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })


vim.api.nvim_set_keymap(
'n', '<leader>s', ':SearchBoxReplace<cr>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<A-c>', ':BufferClose<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>c', '<Plug>RestNvim', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':Telescope grep_string<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'co', ':ConflictMarkerOurselves<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ct', ':ConflictMarkerThemselves<CR>', { noremap = true, silent = true })
--
-- Set barbar's options
vim.g.bufferline = {
  -- Enable/disable animations
  animation = false,

  add_in_buffer_number_order = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = false,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = flase,

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = true,

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}

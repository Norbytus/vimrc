return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    animation = true,
    auto_hide = false,
    clickable = true,
    insert_at_end = false,
    icons = {
      buffer_index = false,
      buffer_number = false,
      button = '',
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = {enabled = true, icon = ''},
        [vim.diagnostic.severity.WARN] = {enabled = true, icon = ''},
        [vim.diagnostic.severity.INFO] = {enabled = true, icon = ''},
        [vim.diagnostic.severity.HINT] = {enabled = true, icon = ''},
      },
      filetype = { enabled = true },
      separator = { left = '▎', right = '' },
      modified = { button = '●' },
      pinned = { button = '', filename = true },
      alternate = { filetype = { enabled = false } },
    },
  },
  version = '^1.0.0',
  config = function(_, opts)
    require('barbar').setup(opts)

    -- Keymaps
    vim.keymap.set('n', 'gT', '<Cmd>BufferPrevious<CR>', { desc = 'Previous buffer' })
    vim.keymap.set('n', 'gt', '<Cmd>BufferNext<CR>', { desc = 'Next buffer' })
    -- vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move buffer left' })
    -- vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move buffer right' })
    -- vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { desc = 'Go to buffer 1' })
    -- vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { desc = 'Go to buffer 2' })
    -- vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { desc = 'Go to buffer 3' })
    -- vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', { desc = 'Pin buffer' })
    vim.keymap.set('n', '<leader>cc', '<Cmd>BufferClose<CR>', { desc = 'Close buffer' })
    -- vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', { desc = 'Pick buffer' })
  end,
}


return {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
        { 'tpope/vim-dadbod', lazy = true },
        { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
        'DBUI',
        'DBUIToggle',
        'DBUIAddConnection',
        'DBUIFindBuffer',
    },
    keys = {
        {"D", "<CMD>DBUIToggle<CR>", desc = "DBUIToggle", mode = {"n"}},
        {"DR", ":normal vip<CR><PLUG>(DBUI_ExecuteQuery)", desc = "run query under cursor (mnemonic: Go)", buffer = true, mode = {"n"} }
    },
    config = function ()
        vim.g.db_ui_use_nerd_fonts = 1
        vim.g.db_ui_auto_execute_table_helpers = 1
        vim.g.db_ui_execute_on_save = 0
    end,
    init = function()
        vim.g.db_ui_use_nerd_fonts = 1
        vim.g.db_ui_auto_execute_table_helpers = 1
        vim.g.db_ui_execute_on_save = 0
        -- Your DBUI configuration
        local cmp = require("cmp")
        vim.api.nvim_create_autocmd("FileType", {
            -- pattern = { "sql", "mysql", "plsql" },
            pattern = { "mysql", "plsql" },
            callback = function()
                cmp.setup.buffer({
                    sources = {
                        { name = "vim-dadbod-completion" },
                        { name = "buffer" },
                        { name = "luasnip" },
                    },
                })
            end,
            group = autocomplete_group,
        })

    end,
}

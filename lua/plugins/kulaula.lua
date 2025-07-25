return {
	"mistweaverco/kulala.nvim",
	ft = {"http", "rest"},
    {
        "mistweaverco/kulala.nvim",
        -- ft = "http",
        dependencies = {
            { 'fgheng/winbar.nvim' },
        },
        keys = {
            { "<leader>r", "", desc = "+Rest" },
            { "<leader>re", "<cmd>lua require('kulala').set_selected_env()<cr>", desc = "Chose env" },
            { "<leader>rs", "<cmd>lua require('kulala').run()<cr>", desc = "Send the request" },
            { "<leader>rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body" },
            { "<leader>rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request" },
            { "<leader>rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request" },
            { "<leader>ri", "<cmd>lua require('kulala').inspect()<cr>", desc = "Jump to next request" },
            { "<leader>rc", "<cmd>lua require('kulala').copy()<cr>", desc = "Jump to next request" },
        },
        opts = {
            global_keymaps = false,
            request_timeout = 5000,
            -- default_view = "headers_body",
            -- winbar = true,
            -- default_winbar_panes = { "body", "headers", "headers_body", "script_output" },
            -- default_winbar_panes = { "script_output" },
        }
    }
}

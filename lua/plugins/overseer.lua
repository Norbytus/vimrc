return {
    {
        'stevearc/overseer.nvim',
        opts = {
            dap = false,
            task_list = {
                bindings = {
                    ["<C-h>"] = false,
                    ["<C-j>"] = false,
                    ["<C-k>"] = false,
                    ["<C-l>"] = false,
                },
            },
            form = {
                win_opts = {
                    winblend = 0,
                },
            },
            confirm = {
                win_opts = {
                    winblend = 0,
                },
            },
            task_win = {
                win_opts = {
                    winblend = 0,
                },
            },
        },
        keys = {
            {
                "<leader>ow",
                "<cmd>OverseerToggle<cr>",
                "n",
                desc = "Task list"
            },
            {
                "<leader>oo",
                "<cmd>OverseerRun<cr>",
                "n",
                desc = "Run task"
            },
            {
                "<leader>oq",
                "<cmd>OverseerQuickAction<cr>",
                "n",
                desc = "Action recent task"
            },
            {
                "<leader>oi",
                "<cmd>OverseerInfo<cr>",
                "n",
                desc = "Overseer Info"
            },
            {
                "<leader>ob",
                "<cmd>OverseerBuild<cr>",
                "n",
                desc = "Task builder"
            },
            {
                "<leader>ot",
                "<cmd>OverseerTaskAction<cr>",
                "n",
                desc = "Task action"
            },
            {
                "<leader>oc",
                "<cmd>OverseerClearCache<cr>",
                "n",
                desc = "Clear cache"
            },
        },
    },
}

return {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    opts = {
        headerMaxWidth = 80,
        transient = true,
        keymaps = {
            replace = { n = "<localleader>r" },
            qflist = { n = "<localleader>q" },
            syncLocations = { n = "<localleader>s" },
            syncLine = { n = "<localleader>l" },
            close = { n = "q" },
        },
    },
    keys = {
        {
            "<leader>sr",
            function()
                require("grug-far").open()
            end,
            desc = "Search and Replace",
        },
        {
            "<leader>sw",
            function()
                require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
            end,
            desc = "Replace Word Under Cursor",
        },
        {
            mode = "v",
            "<leader>sr",
            function()
                require("grug-far").with_visual_selection()
            end,
            desc = "Replace Selection",
        },
    },
}

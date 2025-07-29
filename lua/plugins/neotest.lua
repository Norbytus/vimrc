return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "olimorris/neotest-phpunit",
    },
    keys = {
        { "<leader>tn", function() require("neotest").run.run() end, "n" },
        { "<leader>to", function() require("neotest").output.open({ enter = true }) end, },
        { "<leader>tt", function() require("neotest").summary.toggle() end, desc = "Toggle test summary" },
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-phpunit")({
                    phpunit_cmd = function()
                        return {
                            "docker", "exec", "-i", get_php_container(),
                            "vendor/bin/phpunit",
                        }
                    end,
                }),
            },
            output = { open_on_run = true },
        })
    end
}

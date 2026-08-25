return {
    "ramilito/kubectl.nvim",
    version = "2.*",
    dependencies = {
        "saghen/blink.download",
    },
    keys = {
        {
            "<leader>K",
            function()
                require("kubectl").toggle({ tab = true })
            end,
            desc = "+Kube",
        },
    },
    config = function()
        require("kubectl").setup()
    end,
}

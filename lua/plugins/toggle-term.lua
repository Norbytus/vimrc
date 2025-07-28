return {
    'akinsho/toggleterm.nvim', version = "*", config = true,
    cmd = {
        "ToggleTerm",
        "TermExec",
        "ToggleTermToggleAll",
        "ToggleTermSendCurrentLine",
        "ToggleTermSendVisualLines",
        "ToggleTermSendVisualSelection",
    },
    config = function()
        require("toggleterm").setup({
            direction = "float",
        })
    end,
    keys = {
        { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" }
    },
}

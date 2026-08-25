return {
    "phpactor/phpactor",
    ft = "php",
    keys = {
        {
            "<leader>pm",
            "<cmd>PhpactorMoveFile<CR>",
            desc = "Phpactor: Move Class",
        },
        {
            "<leader>pt",
            "<cmd>PhpactorTransform<CR>",
            desc = "PhpactorTransform",
        },
    },
    config = function()
        vim.g["phpactorInputListStrategy"] = "phpactor#input#list#fzf"
        vim.g["phpactorQuickfixStrategy"] = "phpactor#quickfix#fzf"
    end,
}

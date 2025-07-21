return {
    "phpactor/phpactor",
    config = function()
        vim.g["phpactorInputListStrategy"] = "phpactor#input#list#fzf"
        vim.g["phpactorQuickfixStrategy"] = "phpactor#quickfix#fzf"
    end,
}

return {
  {
    "VidocqH/lsp-lens.nvim",
    event = "LspAttach",
    opts = {
      enable = true,
      include_declaration = false,
      sections = {
        definition = false,
        references = true,
        implements = true,
        git_authors = false,
      },
    },
    config = function(_, opts)
      require("lsp-lens").setup(opts)
    end,
  },
}

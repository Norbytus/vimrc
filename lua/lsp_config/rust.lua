require('lspconfig').rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        features = "all",
      },
      cfg = {
        "tokio_unstable",
      },
    },
  },
})

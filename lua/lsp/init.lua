local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

lspconfig.tsserver.setup{}

require "lsp.lsp-installer"
require("lsp.handlers").setup()
require "lsp.null-ls"
require "lsp.cmp"

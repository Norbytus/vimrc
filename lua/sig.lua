local status_ok, sig = pcall(require, "lsp_signature")
    print(vim.inspect(status_ok))
if not status_ok then
    return
end

local signature_config = {
  log_path = vim.fn.expand("$HOME") .. "/tmp/sig.log",
  debug = false,
  hint_enable = true,
  -- handler_opts = {border = "single"},
  max_width = 80,
  -- add time to toogel
  auto_close_after = 3,
}

sig.setup(signature_config)

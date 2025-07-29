vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import = "plugins" } })

-- In your Lua config (e.g., in plugins/lsp.lua or init.lua)
local on_attach = function(client, bufnr)
  local keymap = vim.keymap.set
  local opts = { buffer = bufnr, silent = true }

  -- LSP keymaps
  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "gD", vim.lsp.buf.declaration, opts)
  keymap("n", "gi", vim.lsp.buf.implementation, opts)
  keymap("n", "gr", vim.lsp.buf.references, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  keymap("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end


vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    cmp.setup.buffer({
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "buffer" },
        { name = "luasnip" },
      },
    })
  end,
  group = autocomplete_group,
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn='80'
vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.opt.swapfile = false
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.splitright = true

function get_php_container()
  -- Get project name for regex
  local project = vim.fn.systemlist("basename $(git rev-parse --show-toplevel)")[1]
  if not project or project == "" then
    return ""
  end

  -- Build full command safely
  local cmd = string.format(
    "docker compose ps -q | xargs -r docker inspect --format '{{.Name}}' 2>/dev/null | sed -E 's#^/##' | grep -E '%s-php' | head -n 1",
    project
  )

  -- Run command and capture output
  local container = vim.fn.systemlist(cmd)[1] or ""
  return vim.trim(container)
end

function host_to_container(path)
    return path:gsub("/home/user/project", "/var/www/project")
end

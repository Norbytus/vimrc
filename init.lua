vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import = "plugins" } })

vim.keymap.set('n', '<leader>w', '<cmd>:w<cr>')

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "sql", "mysql", "plsql" },
--   callback = function()
--     cmp.setup.buffer({
--       sources = {
--         { name = "vim-dadbod-completion" },
--         { name = "buffer" },
--         { name = "luasnip" },
--       },
--     })
--   end,
--   group = autocomplete_group,
-- })
--
vim.opt.clipboard = "unnamedplus"
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
vim.opt.winborder = "rounded"
vim.opt.mouse = ""
vim.cmd [[colorscheme kanagawa-wave]]

vim.o.exrc = true
vim.o.secure = true

function get_php_container()
    -- Get project name for regex
    local project = vim.fn.systemlist("basename $(git rev-parse --show-toplevel)")[1]
    if not project or project == "" then
        return ""
    end

    local cmd = string.format(
        "docker ps -q | " ..
        "xargs -r docker inspect --format '{{.Name}}' 2>/dev/null | " ..
        "sed -E 's#^/##' | grep -E '%s-php' | head -n 1",
        project
    )
    return vim.trim(vim.fn.systemlist(cmd)[1] or "")
end

function host_to_container(path)
    local project = vim.fn.systemlist("basename $(git rev-parse --show-toplevel)")[1]
    if not project or project == "" then
        return ""
    end

    return path:gsub(
        string.format(
            "/home/alex/git/%s/app", project
        ),
        "/var/www/app"
    )
end

vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- Could be "■", "▎", "x"
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

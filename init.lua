-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- format files on save
autocmd("BufWritePre", {
   pattern = "*.ts, *.tsx, *.html",
   command = "Prettier",
})


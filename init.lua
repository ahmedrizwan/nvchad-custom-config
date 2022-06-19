-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

-- -- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- Don't auto commenting new lines
autocmd("BufWritePre", {
   pattern = "*",
   command = "Prettier",
})


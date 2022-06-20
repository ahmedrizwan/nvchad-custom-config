return {
   ["prettier/vim-prettier"] = {
     run = "yarn install",
     ft = {
       "javascript", "typescript", "css", "less", "scss", "graphql", "markdown", "vue", "html"
     }
   },
   ["mfussenegger/nvim-dap"] = {},
   ["Pocco81/DAPInstall.nvim"] = {
     requires = {"mfussenegger/nvim-dap"}
   },
   ["rcarriga/nvim-dap-ui"] = {
     requires = {"mfussenegger/nvim-dap"}
   },
}


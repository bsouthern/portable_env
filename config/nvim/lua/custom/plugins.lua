return function(use)
   use({
      "kyazdani42/nvim-tree.lua",
         requires = {
            "kyazdani42/nvim-web-devicons",
         },
         tag = "nightly",
         config = function()
            require("nvim-tree").setup()
         end
   })
   use({
      "akinsho/bufferline.nvim",
      tag = "v2.*",
      config = function()
         require("bufferline").setup({
            options = {
               mode = "tabs",
               enforce_regular_tabs = true,
            }
         })
      end
   })
   use({
       "folke/which-key.nvim",
         config = function()
           require("which-key").setup({})
         end
   })
   use 'alaviss/nim.nvim'
   use 'prabirshrestha/asyncomplete.vim'
end

require("init")
require("plugins")
require("lsp-config")
require("lualine").setup()
require("keymap")

do local O=vim.opt

O.mouse = "a"

-- Search configuration
O.hlsearch   = true
O.ignorecase = true
O.incsearch  = true
O.smartcase  = true

-- Indentation
O.autoindent     = true
O.expandtab      = true
O.shiftwidth     = 4
O.smartindent    = true
O.softtabstop    = 4

-- Appearance
O.colorcolumn    = "0"
O.cursorline     = true
O.foldenable     = false
O.relativenumber = false
O.numberwidth    = 2
O.number         = true
O.ruler          = true
O.list           = true
O.listchars:append{
  tab      = "│ ", -- Used by Tab on expandtab=false
  trail    = "*",  -- Spaces at the end of line
  precedes = "«",  -- Ellipsis at the left of screen
  extends  = "»"   -- Ellipsis at the right ot screen
}

O.modelineexpr   = true
O.swapfile       = false
O.backup         = false
O.splitbelow     = true
O.splitright     = true
O.tabstop        = 4     -- columns used on tab (default=8)
O.timeoutlen     = 3000
O.wildmenu       = true
O.wrap           = false
O.clipboard      = "unnamed"
O.termguicolors  = true

O.background     = "dark"

end

vim.api.nvim_set_var("gruvbox_contrast_dark","hard") -- "medium", "soft"

-- Load colorscheme with fail safe ones
-- and tweak to beter user interface experience
require("colors").use("wal","dracula","gruvbox","desert")
require("bufferline").setup {
  options = {
    mode = "tabs",
    enfore_regular_tabs = true,
    -- sort_by = "insert_after_current",
    -- persist_buffer_sort = true,
  }
}
-- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
require("nvim-tree").setup()

vim.cmd('source $HOME/.config/nvim/term.vim')


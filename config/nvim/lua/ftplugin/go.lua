local ft = {}

function ft.ftplugin()
    local opt = vim.opt_local
    local map = vim.api.nvim_buf_set_keymap
    local bindopt = {noremap=true,silent=true}
    local filename = vim.api.nvim_buf_get_name(0)
 
    opt.expandtab = true
    opt.shiftwidth = 4
    opt.softtabstop = 4
 
    opt.autoindent = true
    opt.smartindent = true
 
    -- LSP Configuration
    require("lsp-config").setup("gopls", {
       cmd                 = { "gopls" }, --, "serve"},
       filetypes           = { "go", "gomod", "gotmpl" },
       rootPatterns        = { "go.work", "go.mod", ".git" },
       single_file_support = true 
    })
end

--
-- syntax tweaks
--
function ft.syntax()
    vim.cmd[[set syntax=go]]
end

return ft

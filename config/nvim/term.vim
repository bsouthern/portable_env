" Terminal Stuff
tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>
au TermOpen * set nonumber
au TermOpen * startinsert
autocmd BufWinEnter,WinEnter term://* startinsert

" Suckless ToggleTerm
noremap <silent> <C-\> :vsplit \| terminal fish<CR>
noremap <silent> <C--> :split \| terminal fish<CR>
tnoremap <C-\> <C-\><C-N>:bw!<CR>
tnoremap <C--> <C-\><C-N>:bw!<CR>

" Splits Nagivation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" gopls
" lua require'lspconfig'.gopls.setup{}

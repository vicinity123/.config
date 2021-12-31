" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

" TAB in general mode will move to text buffer
nnoremap tt :bn<CR>
nnoremap tw :bp<CR>
nnoremap td :bd<CR>
nnoremap te :edit<Space>

" Saving and quiting
nnoremap s :w<CR>
nnoremap ss :wq<CR>:

" <TAB>: completion.
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Running files
nnoremap py :!python3.10 %<CR>
nnoremap nd :!node %<CR>

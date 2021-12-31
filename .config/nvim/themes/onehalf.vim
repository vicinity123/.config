" onehalf.vim override: Don't set a background color when running in a terminal;
" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { \"gui": \"#ABB2BF", \"cterm": \"145", \"cterm16" : \"7"  }
"     autocmd ColorScheme * call onehalfdark#set_highlight("Normal", {"fg": s:white  }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif

hi Comment cterm=italic
" let g:onehalfdark_hide_endofbuffer=1
" let g:onehalfdark_terminal_italics=1

set termguicolors
let g:onehalfdark_termcolors=256

syntax on
colorscheme onehalfdark
" set termguicolors

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
  set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif


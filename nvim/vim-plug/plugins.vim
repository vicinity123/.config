" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Highlighting Support
	Plug 'sheerun/vim-polyglot'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	
	Plug 'nvim-treesitter/playground'
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Theme
	Plug 'joshdick/onedark.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'sonph/onehalf', { 'rtp': 'vim'  }
	" Conqueror of complettion - kept up to date with master
	Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	" Vim airline and its theme
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Ranger plugin
	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
	" Vim commentary
	Plug 'tpope/vim-commentary'
	" Vim Devicons
	Plug 'ryanoasis/vim-devicons'

call plug#end()

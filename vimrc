set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
set softtabstop=4
set shiftwidth=4

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

"Plugins"
Plugin 'itchyny/lightline.vim'
Plugin 'mitermayer/vim-prettier'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'junegunn/fzf'
Plugin 'micha/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'mattn/emmet-vim'
Plugin 'neoclide/coc.nvim'


set encoding=utf-8
set number 
set relativenumber

"mapping NERDTree to ctrl+n "
map <C-n> :NERDTreeToggle<CR>
set t_Co=16
"close the editor if only NERDTree is left "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set laststatus=2
set noshowmode "hide the mode"
set shortmess+=F "hide the file info"

set colorcolumn=80 "sets the red vertical color column at 80"
"highlight the color column""
highlight ColorColumn ctermbg=8 guibg=lightgrey 

" fzf runtimepath
set rtp+=~/.fzf

" ctrlp ignores "
"let g:ctrlp_custom_ignore = '__pycache__'

nnoremap <silent> <C-p> :FZF<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
highlight Folded ctermbg=None ctermfg=Red

set timeoutlen=1000 ttimeoutlen=0

colorscheme gruvbox
set background=dark
set t_Co=256

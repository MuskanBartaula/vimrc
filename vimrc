set nocompatible              " required
filetype off                  " required

set encoding=utf-8
" hightlight search
set hls
set cursorline
set number 
set relativenumber

" set the tabbing
set tabstop=4
set softtabstop=4
set shiftwidth=4

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mitermayer/vim-prettier',
Plug 'vim-scripts/indentpython.vim'
Plug 'junegunn/fzf'
Plug 'micha/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'herringtondarkholme/yats.vim'
call plug#end()

" All of your Plugins must be added before the following line
filetype plugin indent on    " required


" Tabbing Configuration for python file
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Tabbing Configuration for html file
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

"mapping NERDTree to ctrl+n "
map <C-n> :NERDTreeToggle<CR>
set t_Co=16
"close the editor if only NERDTree is left "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set laststatus=2
set noshowmode "hide the mode"
set shortmess+=F "hide the file info"

" fzf runtimepath
set rtp+=~/.fzf

nnoremap <silent> <C-p> :FZF<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

set timeoutlen=1000 ttimeoutlen=0

colorscheme gruvbox
set background=dark
set t_Co=256
" set the color column when the text cross the 80 column width
highlight ColorColumn ctermbg=red guibg=Red
call matchadd('ColorColumn', '\%80v', 100)

" Enable folding with the spacebar
nnoremap <space> za
highlight Folded ctermbg=None ctermfg=Red

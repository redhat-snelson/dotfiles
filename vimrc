" Set compatibility to Vim only.
set nocompatible

" Set UTF-8
set encoding=utf-8

" Turn on syntax highlighting
syntax enable

" Use Plugin Manager
call plug#begin('~/.vim/bundle')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Plug 'itchyny/lightline.vim'

    Plug 'altercation/vim-colors-solarized'

    Plug 'majutsushi/tagbar'

    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    Plug 'airblade/vim-gitgutter'

    "Plug 'tpope/vim-fugitive'
    "Plug 'junegunn/gv.vim'
    "Plug 'mhinz/vim-signify'
    "Plug 'scrooloose/syntastic'
    "Plug 'tpope/vim-sensible'
    "Plug 'tpope/vim-git'
    Plug 'scrooloose/nerdcommenter'
call plug#end()

" Map Leder
let mapleader = ","
let g:mapleader = ","

" Auto read files when changed from the outside
set autoread

" Show (partial) command in status line
set showcmd

" Show matching brackets
set showmatch

" auto save before commands
set autowrite

" Use the system clipboard as the default copy register
"set clipboard=unnamed

" Copy indentation level when creating a new line
set autoindent

" Try to put the indent level at the right place
set smartindent

" Case insensitive search
set ignorecase

" Unless ther is mixed case, the make it case sensitive
set smartcase

" Highlight search terms instead of just moving the cursor
set hlsearch

" Search as you type
set incsearch

" Keep 3 lines of context during editing
set scrolloff=5

" File Name completion
set wildmode=longest,list

" Don't wrap lines
set nowrap

" Show line numbers
set number

" Set the default tab spacing to 4 soft-tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Show the 100 column border
set colorcolumn=100

" Keep vim files in the ~/.vim folder
set viminfo='100,h,n~/.vim/viminfo

" Enable mouse usage (all modes)
set mouse=

" Based on filetype use custom settings
filetype plugin on
filetype plugin indent on

" :WW sudo saves the file
command! WW :exe "write !sudo tee % > /dev/null"

" remove extra whitespace
"autocmd BufWritePre * %s/\s\+$//e
nnoremap <silent> <F9> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Retab file hot-key
nnoremap <silent> <F8> :retab<CR>

" toggle between col 0 and first character
nnoremap <silent> <Home> :call LineHome()<CR>
function! LineHome()
    let x = col('.')
    execute "normal ^"
    if x == col('.')
        execute "normal 0"
    endif
    return ""
endfunction

" Navigate between Buffers with PageDown PageUp
nnoremap <silent> <S-PageDown> :bnext<CR>
nnoremap <silent> <S-PageUp> :bprev<CR>

" Toggle Search highlight
nnoremap <silent> <F3> :nohl<CR>
"nnoremap <silent> <F3> :set hlsearch!<CR>
"nnoremap <silent> <F3> :noh<CR>
"nnoremap <silent> <F3> :nohlsearch<CR>

" Protection against Weird Undo
nnoremap U :echo " < < ===== C H E C K   C A P S   L O C K ===== > > "<CR>

" Clear last used search pattern
"let @/ = ""

" set Terminal Color palate
"set t_Co=256
"let g:solarized_termcolors=256
set background=dark
"colorscheme solarized

"""" Plugin based config
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" LightLine
set laststatus=2
set noshowmode

" NERDTree
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Vim-GitGutter
let g:gitgutter_max_signs =  20000

" re-assign file extensions to syntax types
au BufReadPost *.cl set filetype=c


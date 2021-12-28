"#######################
"### Plugin Section ####
"#######################

call plug#begin('~/.local/share/nvim/plugged')
 " Plugin Section
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'jiangmiao/auto-pairs'
 Plug 'airblade/vim-gitgutter'
 Plug 'mattn/emmet-vim'
 Plug 'tpope/vim-surround'
 Plug 'fatih/vim-go'
 "Plug 'JuliaEditorSupport/julia-vim'
 Plug 'rust-lang/rust.vim'
 Plug 'cespare/vim-toml', { 'branch': 'main' }
 Plug 'zah/nim.vim'
 "Plug 'SirVer/ultisnips'
 "Plug 'honza/vim-snippets'
 "Plug 'mhinz/vim-startify'
 "Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"#######################
"## Generel Settings ###
"#######################

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set updatetime=100          "set updatetime to 100 ms (see gitgutter)
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
"set mouse=a                " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
"set cursorline             " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
"set spell                  " enable spell check (may need to download language package)
"set noswapfile             " disable creating swap file
"set backupdir=~/.cache/vim " Directory to store backup files

"#######################
"### Style Settings ####
"#######################

" color schemes
"if (has("termguicolors"))
"set termguicolors
"endif
"syntax enable
"colorscheme evening
colorscheme dracula

"" Airline
let g:airline_theme='wombat'
"let g:airline_theme='deus'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1


"#######################
"##### Behaviour #######
"#######################

" open new split panes to right and below
set splitright
set splitbelow


"#######################
"### Key Mappings ######
"#######################

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" navigate and delete buffers (cannot map <C-Tab> because Tab is already
" control key)
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-W> :bdelete<CR>

" NERDTree toggles
nnoremap <C-n> :NERDTreeToggle<CR>

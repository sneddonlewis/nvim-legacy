" Plugins
call plug#begin()
    " Plug '<github-user>/<repo-name>'
    Plug 'morhetz/gruvbox'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {
    \ 'branch': 'release',
    \ 'do' : 'yarn install --frozen-lockfile',
    \}
    Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
    Plug 'voldikss/vim-floaterm'
    Plug 'numToStr/Comment.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'phaazon/hop.nvim'
    let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
    Plug 'ianks/vim-tsx'
    Plug 'leafgarland/typescript-vim'
call plug#end()

" Python3 provider
let g:python3_host_prog = '/usr/bin/python3'

" Comment mappings
lua require('Comment').setup()
lua require('hop').setup()

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

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
set number relativenumber   " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file

" Color scheme
set termguicolors           " enhanced colours
set background=dark
colorscheme gruvbox

" Transparent background
hi! Normal guibg=NONE ctermbg=NONE

let &t_ZH="\e[3m"           " italic support
let &t_ZR="\e[23m"

" File browser
" Start NERDTree but leave the cursor in the buffer 
" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" React stuff
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" Shortcuts
let mapleader = " "
noremap <leader>t :FloatermNew --name=myfloat  <CR>
noremap <leader>f :GFiles <CR>
noremap <leader>h :HopWord <CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" Auto close brackets and stuff
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

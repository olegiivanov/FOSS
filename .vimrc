"SECTION 0. INIT 
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on 

"SECTION 0.5. Plugins
Bundle 'PDV--phpDocumentor-for-Vim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/turbo.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Solarized'
Bundle 'msanders/snipmate.vim'
Bundle 'tomasr/molokai'
Bundle 'mattn/emmet-vim'
Bundle 'vimoutliner/vimoutliner'
Bundle 'rust-lang/rust.vim'
Bundle 'TVO--The-Vim-Outliner'
Bundle 'mtth/scratch.vim'
Bundle 'jlanzarotta/bufexplorer'

"SECTION 1. User Interface options
set sessionoptions-=options
set guioptions-=r
set guioptions-=m
set guioptions-=T
set background=light
colorscheme desert 
set guifont=Dejavu\ Sans\ Mono\ 10
set mouse=a
set winminwidth=0
set laststatus=2
set winminheight=0
set number
set nobackup
set noswapfile

"SECTION 2. Working with text
set tabstop=4
set shiftwidth=4
set smarttab
set et
set showmatch
set hlsearch
set incsearch
set ignorecase
set lz
set listchars=tab:··
set list
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
syntax on
set showcmd
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set completeopt=menu

"SECTION 3. Keybindigns

"""""Save the file
imap <C-X><C-S> <ESC>:w<CR>i
nmap <C-X><C-S> :w<CR>
vmap <C-X><C-S> :w<CR>

""""""Buffer explorer
imap <M-1> <ESC>:BufExplorer<CR>i
nmap <M-1> :BufExplorer<CR>
vmap <M-1> :BufExplorer<CR>



""""""Open new tab
imap <C-X><C-T> <ESC>:tabnew<CR>i
nmap <C-X><C-T> :tabnew<CR>
vmap <C-X><C-T> :tabnew<CR>

""""""PHP Doc
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
"[Easy jump into the normal-mode from the insert-mode]"
inoremap jj <Esc>
"[To move over parenthesis, brackets, quotes in insert-mode]"
inoremap kk <Right>
inoremap hh <Left>
"[Easy omni-completion with Ctrl-Space]"
inoremap <C-Space> <C-X><C-O>

"SECTION 4 FileType Settings
" Проверка синтаксиса PHP
set makeprg=php\ -l\ %
"  " Формат вывода ошибок PHP
set errorformat=%m\ in\ %f\ on\ line\ %l

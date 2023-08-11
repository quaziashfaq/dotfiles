"" Setting some very basic things first

"" Replacing ; with : so that it gets easy to type : to get into command-line
map ; :

"" Type jk if <esc> button is too far  
inoremap jk <ESC>


set nocompatible            " disable compatibility to old-time vi
set mouse=v                 " middle-click paste with mouse
set wildmode=longest,list   " get bash-like tab completions <Test><Test><Test>

"" line numbeing rules
set number                      " Show number lines
set relativenumber

set encoding=utf-8
set clipboard^=unnamed


"" Setting colorscheme
set background=dark
colorscheme desert

set encoding=utf-8
set showcmd                     " display incomplete commands

"" Setting whitespace rules
set wrap                      " wrap lines
"set nowrap                      " don't wrap lines
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set backspace=indent,eol,start  " backspace through everything in insert mode
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed



"" Searching rules
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
"set smartcase                   " ... unless they contain at least one capital letter
set showmatch               " show matching brackets.
set hlsearch                " highlight search results


"" FileType and Syntax rules
"set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting



" Syntax of these languages is fussy over tabs Vs spaces
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Customisations based on house-style (arbitrary)
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
                              
" Treat .rss files as XML
autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
"autocmd Filetype gitcommit setlocal spell textwidth=72




let mapleader=" "           " Mapleader is set to <SPACE>

" Automatic reloading of .vimrc - for Windows
autocmd! bufwritepost ~/vimfiles/vimrc source %


set guifont=Consolas:h12:cANSI:qDRAFT
set autochdir


" Setting Markdown Folding
let g:markdown_folding = 1

"set nomodeline

set belloff=all

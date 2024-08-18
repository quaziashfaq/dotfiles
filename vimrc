"" Setting some very basic things first

set nocompatible            " disable compatibility to old-time vi
set mouse=v                 " middle-click paste with mouse
set wildmode=longest,list   " get bash-like tab completions <Test><Test><Test>

"Swap ; with : to reduce pinky strain
nnoremap ; :

let mapleader=","
map <Leader>w <C-w>

"" Type jk if <esc> button is too far  
inoremap jk <ESC>

"map gf :tabe <cfile><CR>

"Not to prompt to save buffer when switching to another buffer
set hidden

"" Setting whitespace rules
set wrap                    " wrap lines
"set wrap linebreak
"set nowrap                 " don't wrap lines
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set backspace=indent,eol,start  " backspace through everything in insert mode
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smarttab
set smartindent

"" line numbering rules
set number
set relativenumber

set encoding=utf-8

" Enables the clipboard between Vim or Neovim and other applications.
"set clipboard=namedplus

set showcmd                 "To show the command you're typing


"Setting colorscheme
set background=dark
colorscheme evening
"colorscheme desert


" Setting Markdown Folding
let g:markdown_folding = 1

"set foldmethod=expr
set foldmethod=indent





"
"Any thought is word, any word is a file, any file is an entry and any entry is searchable (:E netrw is clarity)
"Of course every significant line is iso8601 date time stamped and backlinks with the usual ripgrep 
" nmap <yourleader>b :r !rg -l <C-R><C-W> ./*<CR>

"Add the plugins that you want!
"run vim and run :PlugInstall to install and :PlugUpdate to update the plugins
"call plug#begin()
"Plug 'vimwiki/vimwiki'
" Plug 'dhruvasagar/vim-table-mode'
"call plug#end()


"" Searching rules
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
"set smartcase                   " ... unless they contain at least one capital letter
set showmatch               " show matching brackets.



" Options
" other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu  to behave more like an IDE.
"set cursorline " Highlights the current line in the editor
" set hidden " Hide unused buffers
"set splitbelow splitright " Change the split screen behavior
"set title " Show file title
"set wildmenu " Show a more advance menu
" set guifont=hack_nerd_font:h11
"set cc=100 " Show at 80 column a border for good code style                      
"set spell " enable spell check (may need to download language package)
"set ttyfast " Speed up scrolling in Vim`:wq
"
" let g:kite_supported_languages = ['python', 'javascript']


"" FileType and Syntax rules
filetype plugin indent on
syntax on                   " syntax highlighting

autocmd FileType markdown setlocal shiftwidth=2 tabstop=2

" Syntax of these languages is fussy over tabs Vs spaces
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal autoindent tabstop=2 softtabstop=2 shiftwidth=2 expandtab number cursorcolumn

autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab 
autocmd FileType css  setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab 
autocmd FileType javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 
                              
" Treat .rss files as XML
autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
"autocmd Filetype gitcommit setlocal spell textwidth=72





" Automatic reloading of .vimrc - for Windows
" autocmd! bufwritepost ~/vimfiles/vimrc source %

" Automatic reloading of .vimrc - for Linux/MacOS
autocmd! bufwritepost ~/.vimrc source %


"set guifont=Consolas:h12:cANSI:qDRAFT
set autochdir



"set nomodeline

set belloff=all

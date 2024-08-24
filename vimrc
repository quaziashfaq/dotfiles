"" Setting some very basic things first

set nocompatible            " disable compatibility to old-time vi
set mouse=v                 " middle-click paste with mouse
set wildmode=longest,list   " get bash-like tab completions <Test><Test><Test>

"Swap ; with : to reduce pinky strain
nnoremap ; :

let mapleader=","

"" Type jk if <esc> button is too far  
inoremap jk <ESC>

"map gf :tabe <cfile><CR>

"Not to prompt to save buffer when switching to another buffer
set hidden

"" Setting whitespace rules
set wrap                      " wrap lines
"set wrap linebreak
"set nowrap                      " don't wrap lines
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set backspace=indent,eol,start  " backspace through everything in insert mode
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smarttab

set smartindent
set autoindent

"" line numbering rules
set number
set relativenumber

set encoding=utf-8
set clipboard^=unnamed

set showcmd                 "To show the command you're typing

filetype plugin on
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal ai ts=2 sw=2 et nu cuc


syntax on


"Setting colorscheme
set background=dark
" colorscheme elflord
"colorscheme desert


" map gf :tabe <cfile><CR>

"Any thought is word, any word is a file, any file is an entry and any entry is searchable (:E netrw is clarity)
"Of course every significant line is iso8601 date time stamped and backlinks with the usual ripgrep 
" nmap <yourleader>b :r !rg -l <C-R><C-W> ./*<CR>



"Add the plugins that you want!
"run vim and run :PlugInstall to install and :PlugUpdate to update the plugins
call plug#begin()
"
"Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode'
"
call plug#end()

"Customizing vimwiki
"let g:vimwiki_list = [{'path': '~/notes/',
"                      \ 'syntax': 'markdown', 'ext': '.md'}]

"After updating .vimrc then run :source % from inside the vimrc


"=============================================================
"=============================================================

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




" Automatic reloading of .vimrc - for Windows
" autocmd! bufwritepost ~/vimfiles/vimrc source %

" Automatic reloading of .vimrc - for Linux/MacOS
autocmd! bufwritepost ~/.vimrc source %


set guifont=Consolas:h12:cANSI:qDRAFT
set autochdir


" Setting Markdown Folding
let g:markdown_folding = 1
" set foldmethod=expr
set foldmethod=indent

"set nomodeline

set belloff=all


" Splitting Mechanisms
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

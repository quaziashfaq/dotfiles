set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set wrap                      " wrap lines
"set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set softtabstop=4
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set number                      " Show number lines




" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
  
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
	call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction



"Only do this part when compiled with support for autocommands
if has("autocmd")
" Enable file type detection
  filetype on
        
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
                              
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
endif
syntax on


" Ctrl+s to save
map <C-s> :w<cr>
imap <C-s> <ESC>:w<cr>a

" Ctrl+q to quit, hold shift to discard changes
map <C-q> :q<cr>
imap <C-q> <ESC>:q<cr>

"  Force Saving Files that Require Root Permission 
cmap w!! %!sudo tee > /dev/null %

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation


execute pathogen#infect()


" For lisp 
"let g:slimv_swank_cmd = '!screen -d -m -S foo -t bar sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp &'
let g:slimv_swank_cmd = '!tmux new-session -d "sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp" &'

" For python programming
let g:slime_target = "tmux"

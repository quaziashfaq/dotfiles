augroup Markdown
    au!
    au FileReadPre,BufRead,BufWinEnter,BufNewFile,BufFilePre *.md setlocal filetype=markdown syntax=markdown foldenable foldmethod=expr shiftwidth=2 tabstop=2 foldexpr=MarkdownFold()
    "autocmd FileType markdown setlocal foldenable foldmethod=expr shiftwidth=2 tabstop=2 foldexpr=MarkdownFold()
"au BufRead,BufWinEnter,BufNewFile *.{md,mdx,mdown,mkd,mkdn,markdown,mdwn}.{des3,des,bf,bfa,aes,idea,cast,rc2,rc4,rc5,desx} setlocal syntax=markdown
augroup END



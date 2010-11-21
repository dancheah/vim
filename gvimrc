set go-=T
set bg=dark
if &background == "dark"
    hi normal guibg=black
    if exists("transp")
        set transp=4
    endif
endif

" vim: sts=4 sw=4 ts=4 et ft=vim

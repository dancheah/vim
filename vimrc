" Setup Pathogen
filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

set nocompatible
set smarttab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set vb t_vb=

colorscheme koehler

let mapleader="\\"
let maplocalleader=","

syntax on

" Some shortcuts I like
map <Leader><CR> :Ex<CR>
map <Leader><Tab> :BufExplorer<CR>
map <Leader>/ :nohlsearch<CR>
map <Leader>g :echo(expand("%:p"))<CR>

ab modeline vim: sts=4 sw=4 ts=4 et
ab defpy def func():    pass

set ignorecase
set smartcase
set incsearch
set hlsearch
set shell=/bin/bash

set dir=~/.vim/tmp

" Regenerate help tags whenever I startup.
" Don't need this because of pathogen helptags
" helptags ~/.vim/doc

filetype plugin on
filetype plugin indent on

" Setup settings for vim clojure
let g:clj_want_gorilla = 1
let vimclojure#NailgunClient = "/opt/personal/pkg/nailgun-0.7.1/ng"

" Setup key bindings for nerdtree
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>ntc :NERDTreeClose<CR>

" Setup find file
let g:FindFileIgnore = ['*.o', '*.pyc', '*.class', '*.hi']
map <Leader>fc :FindFileCache .<CR>
map <Leader>fs :FindFileSplit<CR>
map <Leader>f :FindFile<CR>

" Setup minibufexpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
map <Leader>] :TMiniBufExplorer<CR>

" Disable eclim by default since I don't have eclipse installed everywhere
" Not using eclim right now with the pathogen switch over
" let g:EclimDisabled = 1

" Setup template toolkit files
au BufNewFile,BufRead *.tt2 setfiletype tt2
au BufNewFile,BufRead *.tt setfiletype tt2

" Enable zencoding for the following languages
let g:user_zen_settings = {
\  'php' : {
\       'extends' : 'html',
\       'filters' : 'c',
\  },
\  'xml' : {
\      'extends' : 'html',
\  },
\  'haml' : {
\      'extends' : 'html',
\  },
\  'tt': {
\      'extends' : 'html',
\  },
\  'tt2': {
\      'extends' : 'html',
\  }
\ }        

"Disable perl/python support for now. This looks
"broken anyway
"if has('perl')
"python import vim
"endif

" Enable ctags - figure out how to do this generically so that my home stuff
" is not affected
" TODO: need a command that will refresh ctags for me
" set tags=./tags,tags
" set tags+=/Users/dc/IdeaProjects/websites/bfg/share/lib/framework/tags
" set tags+=/Users/dc/IdeaProjects/websites/bfg/share/sites/bfg_ecomm/tags
" set tags+=/Users/dc/IdeaProjects/websites/bfg/share/sites/bfg_us_store/tags,
" set tags+=/Users/dc/IdeaProjects/websites/bfg/share/sites/bfg_admin/tags

" Some abbreviations for hacking perl. Taken from PBP
" TODO: Use snipmate instead
" iab papp :r ~/.vim/code_templates/perl_application.pl
" iab pmod :r ~/.vim/code_templates/perl_module.pm

" Setup F# files
au BufRead,BufNewFile *.fs set filetype=fs
         
" vim: sts=4 sw=4 et

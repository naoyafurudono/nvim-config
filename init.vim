"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/nfurudono/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/nfurudono/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/nfurudono/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set autoindent
set smartindent
nnoremap <expr> S* ':%s/\<' . expand('<cword>') . '\>/'
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd InsertLeavePre * :call system('im-select com.apple.inputmethod.Kotoeri.RomajiTyping.Roman')


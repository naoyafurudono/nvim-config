"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

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

if has('mac')
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
endif

" カーソル位置記憶
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif

set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
nnoremap <expr> S* ':%s/\<' . expand('<cword>') . '\>/'

if has('mac')
	autocmd InsertLeavePre * :call system('im-select com.apple.inputmethod.Kotoeri.RomajiTyping.Roman')
endif
if has('unix')
	autocmd InsertLeavePre * :call system('ibus engine xkb:us::eng')
endif

set clipboard+=unnamedplus

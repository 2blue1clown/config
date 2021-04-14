au FileType c      setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 fileformat=unix
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 fileformat=unix

" Define some abbreviations for frequently made spelling mistakes:
ab recieve receive
ab thier their

:if has("terminfo")
:  set t_Co=8
:  set t_Sf=[3%p1%dm
:  set t_Sb=[4%p1%dm
:else
:  set t_Co=8
:  set t_Sf=[3%dm
:  set t_Sb=[4%dm
:endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  syn sync fromstart
  set hlsearch
endif

augroup cprog
  " Remove all cprog autocommands
  au!
  autocmd BufRead *	  set noautoindent
  autocmd BufRead *.c,*.h set syntax=c noautoindent
augroup END

set autowrite
set noautoindent
set cc=86
hi ColorColumn ctermbg=Gray

" There are two sets of palettes: for a dark and a light background.
if &background == "light"
  hi Comment	term=bold ctermfg=LightBlue guifg=Blue
  hi Constant	term=underline ctermfg=DarkGreen guifg=Magenta
  hi Special	term=bold ctermfg=DarkGreen guifg=SlateBlue
  hi Identifier term=underline ctermfg=Black guifg=DarkCyan
  hi Statement	term=bold ctermfg=Red gui=bold guifg=Brown
  hi PreProc	term=underline ctermfg=Magenta guifg=Purple
  hi Type	term=underline ctermfg=Red guifg=SeaGreen gui=bold
  hi Ignore	ctermfg=white guifg=bg
else
  hi Comment	term=bold ctermfg=Cyan guifg=#80a0ff
  hi Constant	term=underline ctermfg=Magenta guifg=#ffa0a0
  hi Special	term=bold ctermfg=LightRed guifg=Orange
  hi Identifier	term=underline cterm=bold ctermfg=Cyan guifg=#40ffff
  hi Statement	term=bold ctermfg=Yellow guifg=#ffff60 gui=bold
  hi PreProc	term=underline ctermfg=LightBlue guifg=#ff80ff
  hi Type	term=underline ctermfg=LightGreen guifg=#60ff60 gui=bold
  hi Ignore	ctermfg=black guifg=bg
endif
hi Error	term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo		term=standout ctermbg=Cyan ctermfg=Black guifg=Blue guibg=Yellow
hi Search	term=bold ctermbg=Cyan ctermfg=Black guifg=Blue guibg=Cyan
hi Search	term=bold ctermbg=Yellow ctermfg=Black guifg=Black guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String		Constant
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat		Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special

set autoindent
set rnu
set smartindent
set showmatch
set visualbell

if has("autocmd")
	augroup templates
		autocmd BufNewFile *.java 0r ~/.vim/templates/skeleton.java
		autocmd BufNewFile *Test.ju 0r ~/.vim/templates/skeletonTest.ju
		autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
	augroup END
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
	  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
	  endif

nnoremap _ ddkP
nnoremap - ddp
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwUe



	  

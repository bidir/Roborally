let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toogle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <SNR>15_AutoPairsReturn =AutoPairsReturn()
inoremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toogle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
imap §k :tabn
imap §j :tabp
imap §zR zRka 
imap §zM zMka 
imap §zo zoka 
imap §zc zcka 
imap §! zfa}a
map Q gq
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
vnoremap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toogle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
imap <NL> <Plug>IMAP_JumpForward
inoremap  u
inoremap <expr>  omni#cpp#maycomplete#Complete()
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toogle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
imap !k ki
imap !j ji
imap !l lli
imap !h i
inoremap <expr> . omni#cpp#maycomplete#Dot()
inoremap <expr> : omni#cpp#maycomplete#Scope()
inoremap <expr> > omni#cpp#maycomplete#Arrow()
nmap §k :tabn
nmap §j :tabp
nmap §! zfa}
imap mq 
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backup
set completeopt=menuone,menu,longest,preview
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set helplang=en
set hlsearch
set incsearch
set mouse=a
set omnifunc=omni#cpp#complete#Main
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=10
set shiftwidth=4
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,~/.vim/tags/stl,~/.vim/tags/gl,~/.vim/tags/sdl,~/.vim/tags/qt4
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/lif09/Roborally
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 Makefile
badd +0 board.cpp
badd +0 board.hpp
badd +0 RRNode.cpp
badd +0 RRNode.hpp
badd +0 merde.cpp
badd +0 example.cpp
badd +0 board.txt
argglobal
silent! argdel *
argadd Makefile
set stal=2
edit Makefile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmd :Make doc
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmd :Make doc
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 28 - ((27 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 012|
tabedit example.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
imap <buffer> <S-F9> :CCmdlineArgs 
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
nnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rd :call C_Debugger()
map <buffer> \ra :CCmdlineArgs 
map <buffer> <silent> \re :call C_ExeToRun()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
nnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
onoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vnoremap <buffer> { S{}Pk=iB
map <buffer> <S-F9> :CCmdlineArgs 
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd","i")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english","i")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias","i")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","i")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","i")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx","i")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std","i")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","i")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","i")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","i")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","i")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","i")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","i")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in","i")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out","i")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function","i")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor","i")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method","i")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new","i")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class","i")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor","i")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method","i")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new","i")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class","i")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class","i")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new","i")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class","i")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new","i")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class","i")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits","i")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators","i")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header","i")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header","i")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning","i")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma","i")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error","i")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","i")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","i")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","i")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","i")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","i")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define","i")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local","i")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global","i")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header","i")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf","i")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf","i")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","i")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","i")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","i")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc","i")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc","i")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc","i")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf","i")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf","i")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","i")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","i")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","i")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","i")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","i")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case","i")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","i")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while","i")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","i")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","i")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","i")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments","i")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections","i")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections","i")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header","i")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl","i")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class","i")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags","i")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rd :call C_Debugger()
imap <buffer> \ra :CCmdlineArgs 
imap <buffer> <silent> \re :call C_ExeToRun()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
inoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
inoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
inoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> { {}O
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
48
normal! zo
let s:l = 68 - ((23 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
68
normal! 018|
tabedit board.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 135 + 135) / 271)
exe 'vert 2resize ' . ((&columns * 135 + 135) / 271)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:-,fb:*
setlocal commentstring=
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 8 - ((7 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 06|
wincmd w
argglobal
edit example.cpp
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
imap <buffer> <S-F9> :CCmdlineArgs 
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
nnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rd :call C_Debugger()
map <buffer> \ra :CCmdlineArgs 
map <buffer> <silent> \re :call C_ExeToRun()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
nnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
onoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vnoremap <buffer> { S{}Pk=iB
map <buffer> <S-F9> :CCmdlineArgs 
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd","i")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english","i")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias","i")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","i")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","i")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx","i")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std","i")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","i")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","i")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","i")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","i")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","i")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","i")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in","i")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out","i")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function","i")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor","i")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method","i")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new","i")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class","i")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor","i")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method","i")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new","i")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class","i")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class","i")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new","i")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class","i")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new","i")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class","i")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits","i")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators","i")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header","i")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header","i")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning","i")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma","i")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error","i")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","i")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","i")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","i")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","i")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","i")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define","i")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local","i")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global","i")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header","i")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf","i")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf","i")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","i")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","i")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","i")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc","i")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc","i")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc","i")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf","i")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf","i")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","i")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","i")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","i")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","i")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","i")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case","i")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","i")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while","i")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","i")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","i")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","i")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments","i")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections","i")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections","i")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header","i")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl","i")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class","i")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags","i")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rd :call C_Debugger()
imap <buffer> \ra :CCmdlineArgs 
imap <buffer> <silent> \re :call C_ExeToRun()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
inoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
inoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
inoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> { {}O
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
29
normal! zo
let s:l = 43 - ((41 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 135) / 271)
exe 'vert 2resize ' . ((&columns * 135 + 135) / 271)
tabedit board.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 135 + 135) / 271)
exe 'vert 2resize ' . ((&columns * 135 + 135) / 271)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
imap <buffer> <S-F9> :CCmdlineArgs 
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
nnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rd :call C_Debugger()
map <buffer> \ra :CCmdlineArgs 
map <buffer> <silent> \re :call C_ExeToRun()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
nnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
onoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vnoremap <buffer> { S{}Pk=iB
map <buffer> <S-F9> :CCmdlineArgs 
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd","i")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english","i")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias","i")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","i")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","i")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx","i")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std","i")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","i")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","i")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","i")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","i")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","i")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","i")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in","i")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out","i")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function","i")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor","i")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method","i")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new","i")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class","i")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor","i")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method","i")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new","i")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class","i")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class","i")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new","i")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class","i")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new","i")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class","i")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits","i")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators","i")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header","i")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header","i")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning","i")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma","i")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error","i")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","i")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","i")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","i")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","i")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","i")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define","i")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local","i")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global","i")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header","i")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf","i")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf","i")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","i")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","i")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","i")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc","i")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc","i")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc","i")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf","i")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf","i")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","i")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","i")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","i")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","i")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","i")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case","i")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","i")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while","i")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","i")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","i")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","i")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments","i")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections","i")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections","i")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header","i")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl","i")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class","i")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags","i")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rd :call C_Debugger()
imap <buffer> \ra :CCmdlineArgs 
imap <buffer> <silent> \re :call C_ExeToRun()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
inoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
inoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
inoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> { {}O
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 81 - ((10 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
81
normal! 0
wincmd w
argglobal
edit board.cpp
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
imap <buffer> <S-F9> :CCmdlineArgs 
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
nnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rd :call C_Debugger()
map <buffer> \ra :CCmdlineArgs 
map <buffer> <silent> \re :call C_ExeToRun()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
nnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
onoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vnoremap <buffer> { S{}Pk=iB
map <buffer> <S-F9> :CCmdlineArgs 
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd","i")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english","i")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias","i")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","i")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","i")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx","i")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std","i")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","i")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","i")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","i")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","i")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","i")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","i")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in","i")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out","i")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function","i")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor","i")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method","i")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new","i")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class","i")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor","i")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method","i")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new","i")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class","i")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class","i")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new","i")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class","i")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new","i")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class","i")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits","i")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators","i")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header","i")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header","i")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning","i")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma","i")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error","i")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","i")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","i")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","i")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","i")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","i")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define","i")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local","i")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global","i")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header","i")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf","i")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf","i")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","i")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","i")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","i")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc","i")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc","i")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc","i")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf","i")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf","i")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","i")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","i")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","i")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","i")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","i")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case","i")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","i")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while","i")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","i")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","i")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","i")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments","i")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections","i")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections","i")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header","i")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl","i")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class","i")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags","i")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rd :call C_Debugger()
imap <buffer> \ra :CCmdlineArgs 
imap <buffer> <silent> \re :call C_ExeToRun()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
inoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
inoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
inoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> { {}O
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=5
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
350
normal! zo
384
normal! zo
386
normal! zo
436
normal! zo
let s:l = 412 - ((52 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
412
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 135) / 271)
exe 'vert 2resize ' . ((&columns * 135 + 135) / 271)
tabedit RRNode.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 135 + 135) / 271)
exe 'vert 2resize ' . ((&columns * 135 + 135) / 271)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
imap <buffer> <S-F9> :CCmdlineArgs 
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
nnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rd :call C_Debugger()
map <buffer> \ra :CCmdlineArgs 
map <buffer> <silent> \re :call C_ExeToRun()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
nnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
onoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vnoremap <buffer> { S{}Pk=iB
map <buffer> <S-F9> :CCmdlineArgs 
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd","i")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english","i")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias","i")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","i")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","i")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx","i")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std","i")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","i")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","i")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","i")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","i")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","i")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","i")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in","i")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out","i")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function","i")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor","i")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method","i")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new","i")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class","i")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor","i")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method","i")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new","i")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class","i")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class","i")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new","i")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class","i")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new","i")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class","i")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits","i")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators","i")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header","i")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header","i")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning","i")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma","i")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error","i")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","i")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","i")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","i")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","i")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","i")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define","i")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local","i")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global","i")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header","i")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf","i")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf","i")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","i")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","i")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","i")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc","i")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc","i")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc","i")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf","i")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf","i")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","i")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","i")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","i")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","i")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","i")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case","i")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","i")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while","i")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","i")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","i")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","i")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments","i")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections","i")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections","i")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header","i")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl","i")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class","i")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags","i")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rd :call C_Debugger()
imap <buffer> \ra :CCmdlineArgs 
imap <buffer> <silent> \re :call C_ExeToRun()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
inoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
inoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
inoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> { {}O
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 72 - ((59 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
72
normal! 0
wincmd w
argglobal
edit RRNode.cpp
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
imap <buffer> <S-F9> :CCmdlineArgs 
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
nnoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rd :call C_Debugger()
map <buffer> \ra :CCmdlineArgs 
map <buffer> <silent> \re :call C_ExeToRun()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
nnoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
onoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vnoremap <buffer> { S{}Pk=iB
map <buffer> <S-F9> :CCmdlineArgs 
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> \hd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.doxygen cmd","i")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:C_Templates,"Help.english","i")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias","i")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","i")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","i")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx","i")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std","i")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","i")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","i")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","i")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","i")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","i")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","i")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in","i")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out","i")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function","i")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor","i")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method","i")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new","i")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class","i")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor","i")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method","i")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new","i")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class","i")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class","i")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new","i")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class","i")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new","i")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class","i")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits","i")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators","i")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header","i")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header","i")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning","i")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma","i")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error","i")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","i")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","i")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","i")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","i")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","i")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define","i")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local","i")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global","i")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header","i")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf","i")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf","i")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","i")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","i")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","i")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc","i")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc","i")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc","i")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf","i")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf","i")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","i")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","i")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","i")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","i")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","i")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case","i")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","i")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while","i")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","i")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","i")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","i")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.date","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments","i")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections","i")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections","i")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header","i")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl","i")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class","i")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags","i")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rd :call C_Debugger()
imap <buffer> \ra :CCmdlineArgs 
imap <buffer> <silent> \re :call C_ExeToRun()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \cn :call C_NonCCommentToggle( )
inoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
inoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
inoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> { {}O
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 23 - ((22 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 020|
wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 135) / 271)
exe 'vert 2resize ' . ((&columns * 135 + 135) / 271)
tabnext 2
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

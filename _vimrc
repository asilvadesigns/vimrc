"""""""""""""""""""""""""""""""
"	Vundle
"
set nocompatible                            " be iMproved, required
set autoread
filetype off                                " required
set rtp+=$vim/vimfiles/bundle/Vundle.vim
let path='$vim/vimfiles/bundle'

call vundle#begin()

Plugin 'ap/vim-css-color'					" CSS color
Plugin 'bling/vim-airline'					" Airline
Plugin 'cakebaker/scss-syntax.vim'		    " SCSS syntax
Plugin 'csscomb/vim-csscomb'				" CSS comb
Plugin 'gmarik/Vundle.vim'              	" Required
Plugin 'godlygeek/tabular'                  " Align text
Plugin 'hail2u/vim-css3-syntax'			    " CSS3 syntax
Plugin 'kien/ctrlp.vim'	  					" CtrlP
Plugin 'mattn/emmet-vim'                	" Emmet
Plugin 'matze/vim-move'						" Vim move
Plugin 'nathanaelkane/vim-indent-guides'	" Indent guides
Plugin 'ntpeters/vim-better-whitespace'		" Remove whitespace
Plugin 'othree/html5.vim'				    " HTML5 syntax
Plugin 'pangloss/vim-javascript'			" JS syntax
Plugin 'scrooloose/nerdcommenter'			" Nerd commenter
Plugin 'scrooloose/nerdtree'				" Nerd tree
Plugin 'scrooloose/syntastic'				" Syntastic
Plugin 'terryma/vim-multiple-cursors'       " Multi cursors : )
Plugin 'terryma/vim-smooth-scroll'			" Smooth scroll
Plugin 'tpope/vim-surround'					" Surround tags
Plugin 'wesQ3/vim-windowswap'				" Window swap

call vundle#end()            				" required
filetype plugin indent on    				" required

"""""""""""""""""""""""""""""""
"	Nerd Tree
"
let NERDTreeShowLineNumbers = 1

"""""""""""""""""""""""""""""""
"	Syntastic
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode = "passive"

let g:syntastic_scss_checkers = ['']
"scss_lint"

"""""""""""""""""""""""""""""""
"	Insert
"
set backspace=2								" Allow backspace to erase in insert mode

"""""""""""""""""""""""""""""""
"	Visual
"
au GUIEnter * simalt ~x				   	 	" Enable fullscreen on Gvim open
colorscheme Tomorrow-Night-Eighties			" Set colorscheme
set cpoptions+=$							" show in change mode to mark edit end
set cursorline								" highlight current line
set foldmethod=indent						" Code folding
set guifont=Source_Code_Pro:h14			 	" Set Lucia Console as typeface at size 11
set guioptions-=T							" Remove toolbar
set guioptions-=m							" Remove menu bar
set guioptions-=r							" Remove right-hand scroll bar
set guioptions-=L							" Remove right-hand scroll bar
set laststatus=2							" Always show status line
set linespace=5                          	" Set line height
set nonu rnu                                " Set Relative Number
set novisualbell t_vb=	                    " Disable errorbell
set nowrap									" Disable text wrap
set linebreak
set scrolloff=5   							" Start scrolling before end
set shiftwidth=4					   	 	" Change indent size. Default: 8
set sidescroll=1							" Scroll sideways 1 char at a time
set sidescrolloff=5                         " Same for side
set tabstop=4						   	 	" Change tab size. Default: 8
set vb                                      " Disable errorbell
set virtualedit=all							" Enable virtual edit
syntax on

"""""""""""""""""""""""""""""""
"	Syntax Colors
"
hi cssClassName guifg=#f2777a gui=NONE
hi cssMedia guifg=#cc99cc gui=NONE
hi cssPseudoClassId guifg=#f2777a gui=NONE
hi cssPseudoClassLang guifg=#f2777a gui=NONE
hi cssTagName guifg=#f2777a gui=NONE
hi cssValueLength guifg=#f99157 gui=NONE
hi cssValueNumber guifg=#f99157 gui=NONE
hi cssVendor guifg=#99cccc gui=NONE

hi htmlArg guifg=#f99157 gui=NONE
hi htmlSpecialTagName guifg=#f2777a gui=NONE

hi scssAmpersand guifg=#f2777a gui=NONE
hi scssDefinition guifg=#cc99cc gui=NONE
hi scssIf guifg=#cc99cc gui=NONE
hi scssElse guifg=#cc99cc gui=NONE
hi scssExtend guifg=#cc99cc gui=NONE
hi scssFunctionName guifg=#cc99cc gui=NONE
hi scssInclude guifg=#cc99cc gui=NONE
hi scssMixinParams guifg=#99cccc gui=NONE
hi scssVariable guifg=#f99157 gui=NONE

" Slash after folder names
hi NERDTreeDirSlash guifg=#99cccc gui=NONE

" Folder open icon color
hi NERDTreeOpenable guifg=#f99157 gui=NONE

" Folder close icon color
hi NERDTreeClosable guifg=#ffcc66 gui=NONE

" Pipes beside folders color
hi NERDTreePart guifg=#2d2d2d gui=NONE

hi CursorLineNr guifg=#aaaaaa

"   Detech syntax
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"""""""""""""""""""""""""""""""
"	Search
"
set incsearch
set ignorecase
set smartcase
set nohlsearch


"""""""""""""""""""""""""""""""
"	Indent Guides
"
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"""""""""""""""""""""""""""""""
"	Custom Hotkeys
"
let mapleader = ','

" Toggle Nerdtree
nnoremap <leader>nt :NERDTreeToggle<cr>

" Toggle IndentGuides
nnoremap <leader>ig :IndentGuidesToggle<cr>

" Open vimrc
nnoremap <leader>v :vsplit $vim/_vimrc<cr>

" Open new file in vsplit
nnoremap <leader>n :vnew<cr>

" Exit current file
nnoremap <leader>e :exit<cr>

" Save current file
nnoremap <leader>s :w<cr>

" Save all files
nnoremap <leader>sa :wa<cr>

" Open file explorer
nnoremap <leader>x :Explore<cr>

" Format Code - Indent
nnoremap <leader>f gg=G''0

" Format Code - CSS
nnoremap <leader>c :CSScomb<cr>

" Format Code - HTML
nnoremap <leader>h :%s/>\s*</>\r</g<cr> :g/^$/d<cr> ggVGo=<Esc>

nnoremap <leader>rel :g/^$/d<cr>

" Delete emptylines
"   function! RemoveEmptyLines() range
"       s/div/chicken/g
"   endfunction
"   command! -range RemoveEmptyLines :<line1>,<line2>call RemoveEmptyLines()

" Paste all tag below
nnoremap <leader>pb vatygv<c-[>o<cr><c-[>pvat=kdd

" Join tag
nnoremap <leader>jt JxJx<c-[>

" Toggle invisible characters
nnoremap <leader>l :set list!<cr>

" Strip whitespace
nnoremap <leader>sw :StripWhitespace<cr>

" Paste all tag below
"nnoremap <leader>pa :CSScomb<cr>

" Insert line below on enter
nnoremap <cr> o<Esc>

" Insert line above on shift enter
nnoremap <S-cr> O<Esc>

" <CR>                    "Search for text and replace
vnoremap // y/<C-R>

" Visual all
nnoremap <leader>va ggVGo

" Set syntax to HTML
command! Sethtml :set filetype=html syntax=html<cr>

" Set syntax to CSS
command! Setcss :set filetype=css syntax=css<cr>

" Set syntax to CSS
command! Setscss :set filetype=scss syntax=scss<cr>

"""""""""""""""""""""""""""""""
"	Tabularize
"
"if exists(":Tabularize")
nnoremap <leader>a: :Tabularize /:\zs<cr>
nnoremap <leader>a{ :Tabularize /{<cr>
"endif

"  Split and Tab Controls
if bufwinnr(1)
    nnoremap <C-Tab> :bprevious<cr>
    nnoremap <C-S-Tab> :bNext<cr>
    nnoremap <C-k> <C-W>k
    nnoremap <C-j> <C-W>j
    nnoremap <C-h> <C-W>h
    nnoremap <C-l> <C-W>l
    nnoremap <C-Left> <C-W>5<
    nnoremap <C-Right> <C-W>5>
endif

"""""""""""""""""""""""""""""""
"	Indent Line
"
let g:indentLine_char = '.'

"""""""""""""""""""""""""""""""
"	ctrlp
"
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](\.git|_site|node_modules)$'
hi CtrlPMatch ctermbg=235 ctermfg=250 guibg=#99cccc guifg=#333333 cterm=NONE gui=NONE
hi CtrlPPrtBase ctermbg=235 ctermfg=250 guibg=#ffcc66 guifg=#333333 cterm=NONE gui=NONE

"""""""""""""""""""""""""""""""
"	Smooth Scroll
"
noremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 2)<cr>
noremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 2)<cr>
noremap <silent> <C-b> :call smooth_scroll#up(&scroll*2, 0, 4)<cr>
noremap <silent> <C-f> :call smooth_scroll#down(&scroll*2, 0, 4)<cr>

"""""""""""""""""""""""""""""""
"	Airline
"
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep= ''
let g:airline#extensions#bufferline#enabled = 1

"""""""""""""""""""""""""""""""
"	Open file in browser
"
command! ViewInBrowser :update<Bar>silent !start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "file://%:p"<cr>
command! Firefox :update<Bar>silent !start "C:\Program Files (x86)\Firefox Developer Edition\firefox.exe" "file://%:p"<cr>
command! Chrome :update<Bar>silent !start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "file://%:p"<cr>
command! InternetExplorer :update<Bar>silent !start "C:\Program Files\Internet Explorer\iexplore.exe" "file://%:p"<cr>
command! Safari :update<Bar>silent !start "C:\Program Files (x86)\Safari\Safari.exe" "file://%:p"<cr>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

"""""""""""""""""""""""""""""""
"	Tabularize
"
if exists(":Tabularize")
    nnoremap <leader>a: :Tabularize /:\zs<cr>
endif
"   function! s:align()
"       let p = '^\s*|\s.*\s|\s*$'
"       if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
"           let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
"           let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
"           Tabularize/|/l1
"           normal! 0
"           call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
"       endif
"   endfunction

"""""""""""""""""""""""""""""""
"	Notes
"
"   How to delete everything after X
"   :s/\(X\).*//g
"
"   How to delete text in command line
"   <c-w> or <c-u>

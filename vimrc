" General Settings
" {{{

	" Don't care about vi
	set nocompatible

	" Security
	set modelines=0

	" load all bundles
	runtime bundle/pathogen/autoload/pathogen.vim
	let g:pathogen_disabled = []

	" FuzzyFinder/L9 requires Vim 7.2 and floating-point support
	"if v:version < '702' || !has('float')
	"	call add(g:pathogen_disabled, 'l9')
	"	call add(g:pathogen_disabled, 'fuzzyfinder')
	"endif

	" Gundo requires Vim 7.3 and Python
	if v:version < '703' || !has('python')
		call add(g:pathogen_disabled, 'gundo')
	endif

	" Pathogen
	call pathogen#infect()

	" file handling
	set binary
	set noendofline
	set nobackup
	set backupdir=~/.vim/tmp
	set autowrite
	set encoding=utf-8
	set modeline
	set modelines=2
    set undofile
	set undodir=~/.vim/tmp
	set directory=~/.vim/tmp


	" interface
	set hidden
	set lazyredraw
	set splitbelow
	set splitright
	set scrolloff=5
	set virtualedit+=block
	set nostartofline

	" command prompt and status line
	set showcmd
	set shell=/bin/bash
	set ruler
	set laststatus=2
	set history=1000
	set report=0
	set wildmenu
	set wildmode=longest:full,full
	set wildignore=*.pyc,*.o,*.lo,*.la,*.exe,*.swp,*.db,*.bak,*.old,*.dat,*.,tmp,*.mdb,*~,~*

	" searching
	"nnoremap / /\v
	"vnoremap / /\v
	set ignorecase
	set smartcase
	set gdefault
	set incsearch
	set showmatch
	set hlsearch
	nnoremap <tab> %
	vnoremap <tab> %
" }}}

" Display Settings
" {{{
	" Syntax
	syntax on

	" Indent automatically
	filetype plugin indent on
	set autoindent
	set smartindent
	set cindent

	" Set font
	set gfn=Mensch\ 10
	set antialias

	" color scheme
	set t_Co=256
	colorscheme zellner

	" Turn off bells
	set noerrorbells
	set novisualbell

	" statusline
	autocmd VimEnter,BufRead,BufNewFile * highlight StatusLineGray  cterm=bold ctermfg=231 ctermbg=241 gui=bold guifg=white guibg=#666666
	autocmd VimEnter,BufRead,BufNewFile * highlight StatusLineRed   cterm=bold ctermfg=231 ctermbg=88 gui=bold guifg=white guibg=#913d3b
	autocmd VimEnter,BufRead,BufNewFile * highlight StatusLineGreen cterm=bold ctermfg=231 ctermbg=28 gui=bold guifg=white guibg=#368736

	set statusline=

	set stl+=%#StatusLineGray#\ %n\ %*              " buffer number
	set stl+=%#StatusLineGreen#%{fugitive#statusline()[4:-2]}%* " Git status
	set stl+=%#StatusLineRed#%r%*                   " read-only flag
	set stl+=%#StatusLineRed#%m%*                   " modified flag
	set stl+=\ %<\"%f\"\                            " file name
	set stl+=%y                                     " file type
	set stl+=[%{strlen(&fenc)?&fenc:&enc}           " file encoding
	set stl+=%{&bomb?',BOM':''}                     " BOM flag
	set stl+=%{&ff!='unix'?','.toupper(&ff):''}]\   " file format
	set stl+=%=                                     " left/right separator
	set stl+=%-20.(%l/%L,%c%)\ %P                   " cursor position

	" line numbers
	set numberwidth=4
	set relativenumber

	" cursor line
	"autocmd BufEnter,WinEnter * if bufname('%') != '-MiniBufExplorer-' && &buftype != 'quickfix' | setlocal cursorline | endif
	"autocmd WinLeave * setlocal nocursorline nocursorcolumn

	" highlight trailing whitespace
	autocmd VimEnter,BufRead,BufNewFile * highlight Whitespace ctermbg=236 guibg=#333333
	autocmd VimEnter,BufRead,BufNewFile * match Whitespace /\s\+$/

" }}}

" Text Formatting
" {{{
	" Handle text wrapping
	set wrap
	set textwidth=79
	set formatoptions=qrn1
	set colorcolumn=85

	set selection=inclusive
	set backspace=indent,eol,start
	set whichwrap+=<,>,[,],h,l

	" indents
	filetype plugin indent on
	set autoindent
	set smartindent
	set nocindent

	" avoid auto-indenting pound signs
	inoremap # x<C-H>#

	" tabs
	set noexpandtab
	set smarttab
	set shiftround

	" completion
	inoremap <C-Tab> <C-X><C-O>

	" diffing
	set diffopt+=iwhite

	" Case insensitive search
	set ic

	" Higlhight search
	set hls

	" Wrap text instead of being on one line
	set lbr

	" Adjust Tabs
	set listchars=tab:▸\ 
	set list

	" Adjust Tab Size
	set tabstop=4
	set ts=4
	set shiftwidth=4
	set softtabstop=4

	" Copy/paste
	set clipboard=unnamedplus
" }}}

" Custom Filetype Settings
" {{{
	" PHP completion
	filetype plugin on
	au FileType php set omnifunc=phpcomplete#CompletePHP

	" PHP Generated Code Highlights (HTML & SQL)
	let php_sql_query=1
	let php_htmlInStrings=1
	let php_baselib = 1
	let php_special_functions = 1
	let php_alt_comparisons = 1
	let php_alt_AssignByReference = 1

" }}}

" Keybindings
" {{{

	" Change leader key
	let mapleader = ","

	" Shortcut to :
	nnoremap ; :

	" map Ctrl+C to Escape
	inoremap <C-c> <Esc>

	" move to matching pair with Tab in visual mode
	vmap <Tab> %

	" scroll in insert mode
	inoremap <C-e> <C-o><C-e>
	inoremap <C-y> <C-o><C-y>

	" ,/ remove highlighted search
	nnoremap <silent> <leader>/ :noh<CR>

	" ,1-9 - quick buffer switching
	nnoremap <silent> <leader>1 :b1<CR>
	nnoremap <silent> <leader>2 :b2<CR>
	nnoremap <silent> <leader>3 :b3<CR>
	nnoremap <silent> <leader>4 :b4<CR>
	nnoremap <silent> <leader>5 :b5<CR>
	nnoremap <silent> <leader>6 :b6<CR>
	nnoremap <silent> <leader>7 :b7<CR>
	nnoremap <silent> <leader>8 :b8<CR>
	nnoremap <silent> <leader>9 :b9<CR>

	" ,n - new tab
	nnoremap <leader>n :tabnew<CR>

	" ,r - reload current buffer
	nnoremap <silent> <leader>r :edit<CR>

	" ,R - reload vimrc
	nnoremap <silent> <leader>R :source ~/.vimrc<CR>:nohlsearch<CR>

	" ,v - Reselect pasted text
	nnoremap <leader>v V`]

	" ,s - split vertically
	nnoremap <silent> <leader>s :vsplit<CR>

	" ,w - write file
	nnoremap <silent> <leader>w :write<CR>

	" Continuous Column Scrolling
	" noremap <silent> <leader>+ :<C-u>let @z=&so<CR>:set so=0 noscb\
	" <CR>:bo sp<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

	" Reset ctrlc-c to ESC
	nnoremap <C-c> <Esc>

	" Custom Commands
	command! Wsave w! | cd %:p:h | ! websync %
" }}}

" Plugin Settings
" {{{

	" Zen Coding Settings
	"let g:user_zen_expandabbr_key = '<c-e>'
	"let g:use_zen_complete_tag = 1

	" Nerd Tree
	let NERDTreeMinimalUI=1
	let NERDTreeDirArrows=1
	let NERDChristmasTree=1

	" ,d - toggle NERDTree
	nnoremap <silent> <leader>d :NERDTreeToggle %:p:h<CR>

	" ,t - toggle tagbar
	nnoremap <silent> <leader>t :TagbarToggle<CR>

	" ,u - open gundo
	nnoremap <silent> <leader>u :GundoToggle<CR>

	" ,a - Ack
	nnoremap <leader>a :Ack
	let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" }}}
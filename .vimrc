" Pathogen
call pathogen#infect()

set hls is
" Tabs rules!
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set virtualedit=block
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" SnipMate
let g:snipMate = { 'snippet_version' : 1 }

" Programming bracket fixed
" C/C++/CUDA
autocmd BufRead *.c,*.h,*.hpp,*.cuh,*.cpp,*.cu imap {} {<Return>}<Esc>O
autocmd BufRead *.php,*.pl,*.java,*.css imap {} {<Return>}<Esc>O

" Remove blank-spaces at EOL
autocmd BufWritePre * :%s/\s\+$//e

" CUDA file recognition
au BufNewFile,BufRead *.cu,*.cuh set ft=cuda

" TeX recognition
let g:tex_flavor = "latex"

" Toggle paste mode
set pastetoggle=<F12>

" colorscheme stuff
filetype plugin on
syntax enable
set background=dark
colorscheme nord

set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Italic on comments
highlight Comment cterm=italic

" Undofile if I close the file!
set undofile
let mapleader = ","

" Good bye problems searching
nnoremap / /\v
vnoremap / /\v

" Smart search,
" all-lowercase -> case insensitive
" 1 uppercase   -> case sensitive
set ignorecase
set smartcase

" %s/foo/bar/g ->  %s/foo/bar/
set gdefault

" Cool highlight search results
set incsearch
set showmatch
set hlsearch

" ,<space> instead of :noh
nnoremap <leader><space> :noh<cr>

" Relative numbers instead ofthe fixed ones
set relativenumber

" ,l to remove relative numbers
nnoremap <leader>l :set norelativenumber!<CR>

" Match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Handling long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=72,80,100

" Learning Vim!
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Good bye help!
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Just to avoid mistakes!
nnoremap ; :

" Save on losing focus
au FocusLost * :wa

" Esc is to far!
inoremap jj <ESC>

" Destroy tabs!
nnoremap tt :%s/	/\ \ \ \ /<cr>

" have Vim jump to the last position when
" reopening a file
if has("autocmd")
 au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
  endif

" Powerline options
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set t_Co=256
"let g:Powerline_symbols = 'unicode'
set laststatus=2

set synmaxcol=120

" Gitgutter
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 20000

" NerdTree
nnoremap <F10> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set rtp+=~/.fzf

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

"set lcs+=space:·

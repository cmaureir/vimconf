" Pathogen
call pathogen#infect()

" Options
syntax on
set hls is
set tabstop=4 shiftwidth=4 expandtab
set ignorecase smartcase
set virtualedit=block
set list listchars=trail:◀,tab:··

" let g:Powerline_symbols = 'fancy'
set t_Co=256
set laststatus=2
" Programming bracket fixed
autocmd BufRead *.c,*.h,*.cpp,*.pl,*.java,*.css imap {} {<Return>}<Esc>O

" Remove blank-spaces at EOL
autocmd BufWritePre *.py,*.c,*.h,*.cpp :%s,\s\+$,,e

" CUDA file recognition
au BufNewFile,BufRead *.cu set ft=cu

" TeX recognition
let g:tex_flavor = "latex"

" Toggle paste mode
set pastetoggle=<F11>

" Special tab
if has("autocmd")
  " Enable file type detection
  filetype on
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
endif

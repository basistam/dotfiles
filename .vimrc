set nocompatible
:" Load pathogen
execute pathogen#infect()

:" Color settings
syntax enable
set background=dark
colorscheme solarized

:" map Mac OS X Terminal.app default Home and End
map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-O><Home>
cmap <ESC>[F <C-O><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>

:" Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#hunks#enabled = 0

:" Fix backspace mode
set backspace=2

set scrolloff=10
set cmdheight=2
set tabstop=4
set shiftwidth=4
set foldcolumn=1
set listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

set nu
set cursorline
set noshowmode 
set expandtab
set wildmenu

:" Indent guides settings
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 10
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1

:" Nerd tree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 0 

" Syntax highlighting for subtitle files in Subrip (srt) format
au BufNewFile,BufRead *.srt setf srt

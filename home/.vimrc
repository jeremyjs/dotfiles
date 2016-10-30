set title                       " set the title
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab

set smartcase                   " ignore search case if all lowercase
set hlsearch                    " highlight search terms

set ttyfast                     " smoother redraws
set lazyredraw                  " do not redraw while executing macros

set shortmess=atI               " eliminate annoying 'Press ENTER or type command to continue' notices

set nobackup                    " don't do backups
set nowritebackup               " don't do backups
set noswapfile                  " no swapfiles
set hidden                      " hide buffers, rather than closing them
set undofile                    " save undo buffer between vim instances
set undodir=~/.vim/undodir      " set directory for undo buffers

set mouse=a                     " because mouse

" Japanese support
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

filetype plugin on              " required by nerdcommenter

" highlight characters past column 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" utf 8, just in case
scriptencoding utf-8
set encoding=utf-8

" custom bindings
let mapleader = ","
nnoremap <leader><space> :noh<CR>
" imap jj <Esc>
imap jk <Esc>
nnoremap ; :
noremap Y $
noremap T ^
noremap K i<cr><esc>
nmap <leader>ws :set wrap!<CR>
inoremap <c-tab> <Esc><<i
nnoremap j gj
nnoremap k gk
cnoremap Q q
map <S-Enter> O<Esc>j
map <CR> o<Esc>

" for f{char} navigation
nnoremap n ;
nnoremap N ,
nnoremap m n
nnoremap M N

" select outer
nnoremap co c2i

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" handle correct paste indentation
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" surround with quotes
map ,s ysiw
vmap ,s ysiw

" remove trailing whitespace
map <leader>rw :call StripTrailingWhitespaces()<CR>
fun! StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" jump to last cursor position when opening a file.
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
     exe "normal g`\""
    endif
  end
endfunction

" move between panes
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
map <leader>h <C-w>h

" formatted paste
nmap <leader>p pV`]=
nmap <leader>P PV`]=

" tab indents
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:syntastic_html_checkers = ['eslint', 'tidy']

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

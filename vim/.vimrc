set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader=" "

" Vundle plugin
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
" Nerd tree commands
Plugin 'jistr/vim-nerdtree-tabs'

map <silent> <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

Plugin 'tomasr/molokai'
Plugin 'scwood/vim-hybrid'
Plugin 'myusuf3/numbers.vim'
Plugin 'tpope/vim-surround'

Plugin 'jlanzarotta/bufexplorer'
map <silent> <S-tab> :BufExplorer<CR>
map <silent> <Leader>l :BufExplorer<CR>
map <silent> <Leader><tab> :BufExplorer<CR>

Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'statianzo/vim-jade'
Plugin 'digitaltoad/vim-pug'
Plugin 'kchmck/vim-coffee-script'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'majutsushi/tagbar'
map <silent> <C-\> :TagbarToggle<CR>
" Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'juneedahamed/vc.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlP .'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'tibabit/vim-todo'
Plugin 'tibabit/vim-templates'
Plugin 'benmills/vimux'
map <silent><Leader>b :VimuxRunCommand("./build")<CR>
map <silent><Leader>r :VimuxRunCommand("./build -rc")<CR>
map <silent><Leader>q :VimuxCloseRunner<CR>
map <silent><Leader>t :VimuxRunCommand("gen-ctags")<CR>
Plugin 'arecarn/vim-fold-cycle'
Plugin 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'AlessandroYorba/Alduin'
Plugin 'romainl/Apprentice'

filetype plugin indent on

set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab smartindent number
au BufNewFile,BufRead *.js set softtabstop=2 expandtab shiftwidth=2
au BufNewFile,BufRead *.coffee set softtabstop=2 expandtab shiftwidth=2
au BufNewFile,BufRead *.json set softtabstop=2 expandtab shiftwidth=2
" jison
au BufRead,BufNewFile *.jison setlocal ft=yacc
" jisonlex
au BufRead,BufNewFile *.jisonlex setlocal ft=lex
set hidden
set laststatus=2
set cursorline
set backspace=indent,eol,start
set encoding=utf-8
set listchars=tab:>.,trail:.
set list
set mouse-=a
colorscheme  pablo
syntax on
autocmd BufWritePre * StripWhitespace

" Code folding
" let anyfold_activate=1
" let anyfold_fold_comments=1
set foldlevel=0
hi Folded cterm=none ctermbg=none
hi CursorLine cterm=bold ctermbg=Black

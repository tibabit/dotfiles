
call plug#begin('~/.config/nvim/plugged')


let mapleader=" "

Plug 'scrooloose/nerdtree'
" Nerd tree commands
" Plug 'jistr/vim-nerdtree-tabs'

map <silent><C-n> :NERDTreeToggle<CR>

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='cool'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

Plug 'tomasr/molokai'
Plug 'scwood/vim-hybrid'
Plug 'myusuf3/numbers.vim'
Plug 'tpope/vim-surround'

Plug 'jlanzarotta/bufexplorer'
map <S-tab> :BufExplorer<CR>

Plug 'nanotech/jellybeans.vim'
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlP .'
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Plug 'godlygeek/tabular'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'majutsushi/tagbar'
map <silent><C-\> :TagbarToggle<CR>
let g:tagbar_map_togglefold = '<CR>'
Plug 'edkolev/tmuxline.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'benmills/vimux'
map <silent><Leader>b :VimuxRunCommand("./build")<CR>
map <silent><Leader>q :VimuxCloseRunner<CR>

Plug 'tibabit/vim-templates'


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin indent on

set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab smartindent number
au BufNewFile,BufRead *.js set shiftwidth=2
set hidden
set laststatus=2
set cursorline
hi CursorLine cterm=bold ctermbg=Black
set backspace=indent,eol,start
set encoding=utf-8
set t_Co=256
set incsearch
set list listchars=tab:»·,trail:·
set mouse-=a

autocmd BufWritePre * StripWhitespace

call plug#end()

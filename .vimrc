set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle plugin
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
" Nerd tree commands
Plugin 'jistr/vim-nerdtree-tabs'

map <silent><C-n> :NERDTreeTabsToggle<CR>

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='cool'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

Plugin 'tomasr/molokai'
Plugin 'scwood/vim-hybrid'
Plugin 'myusuf3/numbers.vim'
Plugin 'tpope/vim-surround'

Plugin 'jlanzarotta/bufexplorer'
map <S-tab> :BufExplorer<CR>

Plugin 'nanotech/jellybeans.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Plugin 'godlygeek/tabular'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'edkolev/tmuxline.vim'

Plugin 'tibabit/vim-templates'


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
colorscheme molokai

autocmd BufReadPre *.docx set ro
autocmd BufReadPost *.docx %!docx2txt.pl

set nocompatible

filetype on 
filetype plugin on
filetype indent on

set number
set norelativenumber
set shiftwidth=4
set tabstop=4
set mouse=a
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch
set history=100

" set linebreak
" set textwidth=80

set incsearch
set lazyredraw
set colorcolumn=80

set noshowmode
set cursorline

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

syntax on
set termguicolors
colorscheme dune


     " PLUGINS ---------------------------------------------------------------- {{{

    " Plugin code goes here.
    call plug#begin()

        Plug 'vim-airline/vim-airline'
            let g:airline_theme='base16_dune'

        Plug 'vim-syntastic/syntastic'

        Plug 'kaarmu/typst.vim'

        Plug 'lervag/vimtex'
            let g:tex_flavor='latex'
            let g:vimtex_view_method='zathura'
            let g:vimtex_quickfix_mode=0
            set conceallevel=1
            let g:tex_conceal='abdmg'
    
    call plug#end()

   " }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
let g:airline_powerline_fonts = 1
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ ]
    \ ]
" }}}

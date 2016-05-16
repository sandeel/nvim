call plug#begin()

" Make sure you use single quotes

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sensible'
Plug 'freeo/vim-kalisi'
Plug 'vim-airline/vim-airline'
Plug 'sjl/badwolf'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'

" Add plugins to &runtimepath
call plug#end()

let g:vimwiki_list = [{'path':'~/shared/vimwiki'}]

" set 256 colors
colorscheme kalisi
set background=dark

syntax enable

set encoding=utf-8

" Powerline setup
set laststatus=2
set termencoding=utf-8
" set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

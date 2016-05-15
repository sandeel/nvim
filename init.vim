call plug#begin()

" Make sure you use single quotes

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sensible'

" Add plugins to &runtimepath
call plug#end()

let g:vimwiki_list = [{'path':'~/shared/vimwiki'}]

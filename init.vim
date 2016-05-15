call plug#begin()

" Make sure you use single quotes

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sensible'
Plug 'freeo/vim-kalisi'

" Add plugins to &runtimepath
call plug#end()

let g:vimwiki_list = [{'path':'~/shared/vimwiki'}]

" set 256 colors
set t_Co=256
" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

colorscheme kalisi
set background=dark

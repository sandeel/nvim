call plug#begin()

" Make sure you use single quotes

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sensible'
Plug 'freeo/vim-kalisi'
Plug 'vim-airline/vim-airline'
Plug 'sjl/badwolf'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

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

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" swp files and history
set noswapfile
set undofile
set undodir=~/.vim/undo//
set undolevels=1000         " How many undos
set undoreload=10000  

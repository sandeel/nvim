call plug#begin()

" Make sure you use single quotes

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sensible'
Plug 'freeo/vim-kalisi'
Plug 'vim-airline/vim-airline'
Plug 'sjl/badwolf'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'Shougo/neosnippet'


function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" Use deoplete.
let g:deoplete#enable_at_startup = 1

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


" snippets
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/snippets'


" formatting
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set conceallevel=0

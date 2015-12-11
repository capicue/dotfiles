execute pathogen#infect()
syntax on
filetype plugin indent on

" Change colorscheme
colorscheme Tomorrow-Night-Bright

" Make tabs two spaces wide
set tabstop=2

set guifont=InputMono\ Thin:h12

" Disable beeping
set vb

" File specific indentation
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

" Beautify
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

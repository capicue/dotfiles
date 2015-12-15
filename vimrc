execute pathogen#infect()
syntax on
filetype plugin indent on

""
"" Settings
""

colorscheme Tomorrow-Night-Bright " Change colorscheme
set guifont=InputMono\ Thin:h12   " Change font
set guioptions-=L                 " Remove left scrollbar
set vb                            " Disable beeping


""
"" Filetypes
""

" CSS
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Haskell
autocmd FileType haskell noremap <buffer> <c-i> :GhcModInfo<cr>

" HTML
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>

" JavaScript
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>

" Makefile
au FileType make setlocal noexpandtab

" Markdown
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
au FileType markdown setlocal wrap linebreak textwidth=72 nolist

" Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4

" Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby


""
"" Mappings
""

vmap  <expr>  <C-DOWN>   DVB_Drag('down')
vmap  <expr>  <C-UP>     DVB_Drag('up')

if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  map <D-F> :Ack<space>
endif

map <C-n> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
nmap <F8> :TagbarToggle<CR>


""
"" Settings
"" https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/settings.vim
""

set nocompatible    " Use vim, no vi defaults
set number          " Show line numbers
set ruler           " Show line and column number
set encoding=utf-8  " Set default encoding to UTF-8
syntax enable       " Turn on syntax highlighting allowing local overrides

" whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter


""
"" Mappings
"" https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/mappings.vim
""

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

if has("gui_macvim") && has("gui_running")
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<

  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

else
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <A-]> >gv
  vmap <A-[> <gv

  nmap <A-]> >>
  nmap <A-[> <<

  omap <A-]> >>
  omap <A-[> <<

  imap <A-]> <Esc>>>i
  imap <A-[> <Esc><<i
endif


""
"" Status Line
"" https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/statusline.vim
""

set laststatus=2  " always show the status bar

" Start the status line
set statusline=%f\ %m\ %r
set statusline+=Line:%l/%L[%p%%]
set statusline+=Col:%v
set statusline+=Buf:#%n
set statusline+=[%b][0x%B]

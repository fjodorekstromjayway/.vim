" BASE

" General
set nocompatible            " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on   " filetype detection[ON] plugin[ON] indent[ON]
syntax enable               " enable syntax highlighting (previously syntax on).

" Navigation
set scrolloff=3             " some lines around scroll for context

" Cursor/Line
set number
set colorcolumn=80          " ruler at 80 chars width
set cursorline              " highlight the current line

" Status/History
set history=200             " remember a lot of stuff
set ruler                   " Always show info along bottom.
set cmdheight=1

" Scrolling
set ttyfast

" Files
set autoread                   " auto-reload files changed on disk
set updatecount=0              " disable swap files
set wildmode=longest,list,full " :e completion mode

" Vimdiff
set diffopt=filler,vertical

" Conceal (disabled by default)
set conceallevel=0

" Wrapping
set nowrap                  " don't wrap text

" Leader
let mapleader = ','

execute pathogen#infect()
" syntax highlighting
set background=dark     " you can use `dark` or `light` as your background
color mango
" INDENTATION
set cindent
set autoindent              " auto-indent
set tabstop=2               " tab spacing
set softtabstop=2           " unify
set shiftwidth=2            " indent/outdent by 2 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set smarttab                " use tabs at the start of a line, spaces elsewhere

autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" GIT

" Don't index files listed in gitignore.
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" git grep the word under cursor
nmap <Leader>gg :Ggrep <cword> .<CR>

" CHECKING

" Syntax checking
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list=1

" Spell Checking Commands
command! EnableSpellCheck :set spell spelllang=en_us
command! DisableSpellCheck :set nospell

" JAVASCRIPT

let javascript_enable_domhtmlcss = 1
let g:javascript_conceal = 1

" use Node navigation for ES6
autocmd User Node setlocal suffixesadd+=.es,.es6,.jsx


" SEARCH

set hlsearch                " highlight all results
set incsearch               " but do highlight as you type your search.
set ignorecase              " make searches case-insensitive...
set smartcase               " ... unless they contain at least one capital letter
set gdefault                " have :s///g flag by default on"

" Reset search with ,n
noremap <Leader>n :noh<CR>

" NO ARROW KEYS

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" JSON

autocmd FileType json command! FmtJson %!jq -M .
let g:vim_json_syntax_conceal = 0


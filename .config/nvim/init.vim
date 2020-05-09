
"------------------------- Plugins -------------------------

" Specify plugin directory
call plug#begin('~/.local/share/nvim/plugged')

  Plug 'neoclide/coc.nvim', {'branch':'release'}  "code completion
  Plug 'haishanh/night-owl.vim'                   "color theme
  Plug 'itchyny/lightline.vim'                    "info bar
  Plug 'preservim/nerdtree'


" Initialize plugin system
call plug#end()

"------------------------- User Configs -------------------------
" some basic configs
filetype on
filetype plugin on
filetype indent on
set relativenumber
set wrap
set termguicolors
set list
set listchars=
set listchars+=tab:›\ ,
set listchars+=trail:•,
set mouse=a
set cursorline

" syntax and plugins
filetype on
filetype plugin on
filetype indent on

  "--------- Set Theme
  " Enable true colors
  if (has("termguicolors"))
  set termguicolors
  endif

  syntax enable
  colorscheme night-owl
  " To enable the lightline theme
  let g:lightline = { 'colorscheme': 'nightowl' }


"------------------------- Spelling Errors -------------------------

" Common spelling errors
iab teh the
iab Teh The
iab improt import
iab cont const
iab retrun return

"------------------------- Key Mappings -------------------------
tnoremap <Esc> <C-\><C-n>

" set leader to space
let mapleader = "\<Space>"

" get out of insert mode 
inoremap jk <ESC>

"Intelisense 
    "Tab to to jump
     inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

    "Enter to complete
     inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

"nmap <M-j> :m+<CR>==
"imap <M-j> <Esc>:m+<CR>==gi=gi
"vmap <M-j> :m'>+<CR>gv=gv

"nmap <M-k> :m-2<CR>==
"imap <M-k> <Esc>:m-2<CR>==gi=gi
"vmap <M-k> :m-2<CR>gv=gv

" allows differnt casing for writing and quiting
:command W w
:command Q q
:command Wq wq
:command WQ wq

"bind ; to : to save the pinky
nnoremap ; :

"easier split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"move slected lines up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"disable arrow keys
map <Up> <Nop>
map! <Up> <Nop>
map <Down> <Nop>
map! <Down> <Nop>
map <Left> <Nop>
map! <Left> <Nop>
map <Right> <Nop>
map! <Right> <Nop>

" use system clipboard over registers
set clipboard+=unnamedplus


"------------------------- Plugin Configs -------------------------

" Map nerdtreetoggle to ctrl-n
map <C-n> :NERDTreeToggle<CR>



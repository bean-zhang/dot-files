""""""""""""""""""""
" Colors & Fonts
""""""""""""""""""""
" [solarized](https://github.com/altercation/Vim-colors-solarized)
"colorscheme solarized	" Awesome colorscheme
" [molokai](https://github.com/tomasr/molokai)
colorscheme molokai
" [badwolf by Steve Losh](https://github.com/sjl/badwolf/)
"colorscheme badwolf
" [Monokai](https://github.com/sickill/vim-monokai)
"colorscheme monokai
syntax enable			" Enable syntax processing
syntax on				" Turn on syntax highlighting
"set background=dark
set guifont=Courier_new:h16:b:cDEFAULT

""""""""""""""""""""
" Spaces & Tabs
""""""""""""""""""""
set tabstop=4			" Number of visual spaces per TAB
set softtabstop=4		" Number of spaces in tab when editing
set expandtab			" Tabs are spaces
set smarttab			" Enable smart-tabs
"set autoindent			" Auto-indent new lines
set shiftwidth=4		" Number of auto-indent spaces
"set smartindent		" Enable smart-indent

""""""""""""""""""""
" UI Config
""""""""""""""""""""
set number				" Show line numbers
"set linebreak          " Break lines at word (requires Wrap lines)
"set showbreak=+++      " Wrap-broken line prefix
"set textwidth=80		" Line wrap (number of cols)
set showcmd				" Show entered commonds in bottom ba
set showmatch           " Highlight matching bracket [{()}]
set cursorline          " Highlight current line
set ruler				" Show row and column ruler information
filetype indent on      " Load filetype-specific indent files
filetype plugin on      " Load filetype-specific plugin
set wildmenu            " Visual autocomplete for command menu
set lazyredraw          " Redraw only when we need to.

""""""""""""""""""""
" Searching
""""""""""""""""""""
set hlsearch			" Highlight all matches
set incsearch			" Search as characters are entered
set smartcase			" Enable smart-case search
set ignorecase			" Always case-insensitive
set visualbell			" Use visual bell (no beeping)

""""""""""""""""""""
" Folding
""""""""""""""""""""
set foldenable          " Enable folding
set foldlevelstart=10   " Open most folds by default
set foldnestmax=10      " 10 nested fold max
" <space> open/close folds
nnoremap <space> za
set foldmethod=indent   " Fold based on indent level

""""""""""""""""""""
" Custom Movements
""""""""""""""""""""
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set undolevels=1000		" Number of undo levels


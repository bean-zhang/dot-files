""""""""""""""""""""
" Colors & Fonts
""""""""""""""""""""
set background=dark
" [solarized](https://github.com/altercation/Vim-colors-solarized)
"colorscheme solarized	" Awesome colorscheme
" [molokai](https://github.com/tomasr/molokai)
colorscheme molokai
" [badwolf by Steve Losh](https://github.com/sjl/badwolf/)
"colorscheme badwolf
" [Monokai](https://github.com/sickill/vim-monokai)
"colorscheme monokai
set guifont=Courier_new:h16:b:cDEFAULT
" Refer to http://edyfox.codecarver.org/html/vim_fileencodings_detection.html
set encoding=utf-8      " The internal encoding
set termencoding=utf-8  " The encoding displayed
set fileencoding=utf-8  " The encoding written to file
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,gb2312,big5,euc-jp,euc-kr,latin1
syntax enable			" Enable syntax processing
syntax on				" Turn on syntax highlighting

""""""""""""""""""""
" Spaces & Tabs
""""""""""""""""""""
set expandtab			" Tabs are spaces
set tabstop=4			" Number of visual spaces per TAB
set shiftwidth=4		" Number of auto-indent spaces
set softtabstop=4		" Number of spaces in tab when editing
set smarttab			" Enable smart-tabs
set autoindent			" Auto-indent new lines
set smartindent		    " Enable smart-indent

""""""""""""""""""""
" UI Config
""""""""""""""""""""
set number				" Show line numbers
"set linebreak          " Break lines at word (requires Wrap lines)
"set showbreak=+++      " Wrap-broken line prefix
set textwidth=80		" Line wrap (number of cols)
set laststatus=2       
set showcmd				" Show entered commonds in bottom bar
set showmatch           " Highlight matching bracket [{()}]
set cursorline          " Highlight current line
set cursorcolumn        " Highlight current column
set ruler				" Show row and column ruler information
filetype on             " Enable filetype detection
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
set foldmethod=indent   " Fold based on indent level
set foldlevelstart=10   " Open most folds by default
set foldnestmax=10      " 10 nested fold max
" <space> open/close folds
nnoremap <space> za

""""""""""""""""""""
" Custom Movements
""""""""""""""""""""
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" 定义快捷键到行首和行尾
"nnoremap LB 0
nnoremap LB ^
nnoremap LE $
"nnoremap ^ <nop>
"nnoremap $ <nop>

set undolevels=1000		" Number of undo levels
set clipboard=unnamed   " Save clipboard to unnamed register, share clipboard
" 关闭兼容模式
set nocompatible

" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nnoremap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nnoremap <Leader>q :q<CR>
" 定义快捷键强制关闭当前分割窗口
nnoremap <Leader>q! :q!<CR>
" 定义快捷键保存当前窗口内容
nnoremap <Leader>w :w<CR>
" 定义快捷键保存并退出当前窗口
nnoremap <Leader>wq :wq<CR>
" 不做任何保存，直接退出 vim
nnoremap <Leader>Q :qa<CR>
" 不做任何保存，强制退出 vim
nnoremap <Leader>Q! :qa!<CR>
" 定义快捷键保存所有窗口内容
nnoremap <Leader>W :wa<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nnoremap <Leader>WQ :wa<CR>:q<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 定义快捷键在结对符之间跳转
nnoremap <Leader>M %

" Plugin Management, pathogen.vim ( https://github.com/tpope/vim-pathogen )
" 将 pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/vim-pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()

" Powerline ( https://github.com/Lokaltog/vim-powerline )
" 设置状态栏主题风格
"let g:Powerline_colorscheme='fancy'

" Indent Guides ( https://github.com/nathanaelkane/vim-indent-guides )
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" a.vim ( https://github.com/vim-scripts/a.vim.git )
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>


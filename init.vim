set nocompatible

source ~/.config/nvim/plugins.vim

"Plugin Specific
set background=dark
colorscheme minimalist

"   For nerd tree sidebar
map <C-n> :NERDTreeToggle<CR>
"       Open on start

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"	Open folders with other bindings
let NERDTreeMapActivateNode='<space>'
let NERDTreeMapActivateNode='l'
"       Close vim if only sidebar open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"When GoYo opened, start Limelight too
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'DarkGray'

" Enable Goyo by default for mutt writting
" Goyo's width will be the line limit in mutt.
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo

set title titlestring=

"See what docs are open
let g:airline#extensions#tabline#enabled = 1

"guess filetype
filetype indent plugin on

"syntax highlighting
syntax on

"window switching
set hidden

"cli completion
set wildmenu

"show partial commands
set showcmd

"highlight searches
set hlsearch 

"use case insentitive search for lowecase strings
set ignorecase
set smartcase

set backspace=indent,eol,start

"keep indent
set autoindent

set ruler

set laststatus=2

"raise message if unsaved changes
set confirm

"visual warning rather than beep
set visualbell

set cmdheight=2

"show line numbers
set number relativenumber
set cursorline
hi cursorline cterm=none
hi cursorlinenr ctermfg=red

"Toggle relative numbering, and set to absolute on loss of focus or insert mode

"F11 to toggle 'paste' and 'nopaste'
set pastetoggle=<F11>

"Use system-wide clipboard
set clipboard+=unnamedplus

"Deal with tabs vs spaces
set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap ; :
"nnoremap : ;

"Y follows D or C i.e. yank till EOL
map Y y$

"Map <C-L> (redraw screen) to turn off search highlight till next search
nnoremap <C-L> :nohl<CR><C-L>

" disable arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

set mouse+=a

"Hide error flash and beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

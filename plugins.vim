
" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \                                                                  
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 



call plug#begin('~/.config/nvim/plugged')

"List of plugins.
Plug 'itchyny/vim-cursorword'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'severin-lemaignan/vim-minimap'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

"Plug 'Valloric/YouCompleteMe'

Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'gioele/vim-autoswap'
"Distraction free editing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim' 
Plug 'rhysd/vim-grammarous'
"List ends here. Plugins visible to Vim after this call.
call plug#end()

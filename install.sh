
#Install nVim
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

#	ALT on debian
#sudo add-apt-repository ppa:neovim-ppa/stable
#sudo apt-get update
#sudo apt-get install neovim

#Python Binding
pip3 install neovim

#Install Plugin Manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Install Packages
nvim +PluginInstall +qall

#YouCompleteMe Bindings
cd plugged/YouCompleteMe
./install.py --js-completer


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

#Install Packages
nvim +PluginInstall +qall

#YouCompleteMe Bindings
cd plugged/YouCompleteMe
./install.py --js-completer

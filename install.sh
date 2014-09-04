sudo apt-get install build-essential cmake
sudo apt-get install python-dev
sudo apt-get install hg
hg clone https://vim.googlecode.com/hg/vim 
cd vim/src
sudo apt-get build-dep vim
./configure --enable-pythoninterp --with-features=huge --prefix=$HOME/opt/vim
make && make install
mkdir -p $HOME/bin
cd $HOME/bin
ln -s $HOME/opt/vim/bin/vim
which vim
vim --version
sudo apt-get install gtk2-engines-pixbuf
cd $HOME
ln -s vim/.vimrc .
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim
ln -s ../vim/plugin .
cd bundle
" install plugins
" NerdTree
git clone https://github.com/scrooloose/nerdtree.git
" YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
./install.sh --clang-completer
" pss.vim
git clone https://github.com/bernh/pss.vim.git

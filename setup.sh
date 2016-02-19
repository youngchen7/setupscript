sudo apt-get install vim
sudo apt-get install tmux
sudo apt-get install git
rm ~/.vimrc
cp vimrc ~/.vimrc
rm ~/.tmux.conf
cp tmux.conf ~/.tmux.conf
if [ -z "$(cat ~/.bashrc | grep 'alias tmux="tmux -2"')" ]; then
    echo "Tmux alias not found"
    printf '\nalias tmux="tmux -2"' >> ~/.bashrc
    source ~/.bashrc
else
    echo "Tmux alias already in bashrc"
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git clone https://github.com/powerline/fonts.git
fonts/install.sh
gsettings set org.gnome.desktop.interface monospace-font-name 'Droid Sans Mono for Powerline 10'
rm -r -f fonts

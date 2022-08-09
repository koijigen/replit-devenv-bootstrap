export PJT_HOME=`pwd`

[ ! -d $PJT_HOME/dotfiles ] && git clone https://github.com/koijigen/dotfiles.git


cp $PJT_HOME/dotfiles/.bashrc ~/.bashrc
cp $PJT_HOME/dotfiles/.vim/.vimrc ~/.vimrc
cp $PJT_HOME/dotfiles/.tmux.conf ~/.tmux.conf

sed -e '1s/^/let \$VIM = \"$PJT_HOME\/dotfiles\/.vim\"\n/g' $PJT_HOME/dotfiles/.vim/.vimrc > ~/.vimrc
echo "" >> ~/.vimrc
echo "let \$VIMRUNTIME = \"$PJT_HOME/dotfiles/.vim/runtime\"" >> ~/.vimrc
echo "let \$PJT_HOME = \"$PJT_HOME\"" >> ~/.vimrc


echo "restored."

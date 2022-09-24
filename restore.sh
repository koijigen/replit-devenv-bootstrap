export PJT_HOME=`pwd`

[ ! -d $PJT_HOME/dotfiles ] && git clone https://github.com/koijigen/dotfiles.git


cp ~/.bashrc ~/.bashrc.restorebak
cp ~/.vimrc ~/.vimrc.restorebak
cp ~/.tmux.conf ~/.tmux.conf.restorebak

cp $PJT_HOME/dotfiles/.bashrc ~/.bashrc
cp $PJT_HOME/dotfiles/.vim/.vimrc ~/.vimrc
cp $PJT_HOME/dotfiles/.tmux.conf ~/.tmux.conf


echo "restored."

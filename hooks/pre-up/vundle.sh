#!/bin/zsh
VUNDLE_VC_DIR=~/.vim/bundle/Vundle.vim

if [ ! -d $VUNDLE_VC_DIR ]
then
    echo cloning vundle to $VUNDLE_VC_DIR 
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_VC_DIR
fi
vim +PluginInstall +qall

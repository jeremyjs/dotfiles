#!/bin/bash

# for file in .{bash_profile,gitconfig}; do
#   [ -r "$HOME/dotfiles/$file" ] && rm $HOME/$file && ln -s $HOME/dotfiles/$file $HOME/$file
# done
# unset file

# [ -r "$HOME/dotfiles/home/.vimrc" ] && ln -s ~/dotfiles/home/.vimrc ~/.vimrc
for file in $HOME/dotfiles/home/.*; do
  if [ -r "$file" ] && [ -f "$file" ] ; then
    mkdir -p ~/dotfiles/bak/home/
    mv -f ~/$(basename $file) ~/dotfiles/bak/home/ &> /dev/null
    ln -sf $file ~/$(basename $file)
  fi
done
unset file

mkdir -p ~/.vim/ftplugin/
for file in $HOME/dotfiles/vim/ftplugin/*; do
  [ -r "$file" ] && ln -sf $file ~/.vim/ftplugin/$(basename $file)
done
unset file

source ~/.bash_profile

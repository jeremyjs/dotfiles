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

# for file in $HOME/dotfiles/home/.{vimrc,}; do
#   [ -r "$file" ] && ln -s ~/dotfiles/.bash_profile ~/.bash_profile
# done
# unset file

source ~/.bash_profile

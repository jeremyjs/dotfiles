#!/bin/bash
#
# for file in .{bash_profile,gitconfig}; do
#   [ -r "$HOME/dotfiles/$file" ] && rm $HOME/$file && ln -s $HOME/dotfiles/$file $HOME/$file
# done
# unset file

mkdir ~/dotfiles/bak/ &> /dev/null
mv ~/.bash_profile ~/dotfiles/bak/
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
# [ -r "$HOME/dotfiles/home/.vimrc" ] && ln -s ~/dotfiles/home/.vimrc ~/.vimrc
for file in $HOME/dotfiles/home/.*; do
  [ -r "$file" ] && [ -f "$file" ] && ln -s $file ~/$(basename $file)
done
unset file
# for file in $HOME/dotfiles/home/.{vimrc,}; do
#   [ -r "$file" ] && ln -s ~/dotfiles/.bash_profile ~/.bash_profile
# done
# unset file
source ~/.bash_profile

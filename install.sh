#!/bin/bash

source ~/dotfiles/shell/.function

# for file in .{bash_profile,gitconfig}; do
#   [ -r "$HOME/dotfiles/$file" ] && rm $HOME/$file && ln -s $HOME/dotfiles/$file $HOME/$file
# done
# unset file

for file in $HOME/dotfiles/home/.[!.]*; do
  if [ -r "$file" ] && ([ -f "$file" ] || [ -d "$file" ]) ; then
    mkdir -p ~/dotfiles/bak/home/
    mv -f ~/$(basename $file) ~/dotfiles/bak/home/ &> /dev/null
    ln -sf $file ~/$(basename $file)
  fi
done
unset file

mkdir -p ~/.vim/ftplugin/
for file in $HOME/dotfiles/vim/ftplugin/*; do
  if [ -r "$file" ] && [ -f "$file" ] ; then
    ln -sf $file ~/.vim/ftplugin/$(basename $file)
  fi
done
unset file

include ~/.bash_profile
# include ~/.zshrc

reset


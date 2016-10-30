source $HOME/dotfiles/.bash_env

# Load the shell dotfiles, and then some:
# * ~/dotfiles/shell/.path can be used to extend `$PATH`.
# * ~/dotfiles/shell/.local can be used for other settings you don’t want to commit.
# path,exports,aliases,functions,git,python,ruby,local
for file in $HOME/dotfiles/shell/.{path,alias,function,git,node,python,ruby,local}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Japanese support
export LC_CTYPE=en_US.UTF-8

# VENDOR

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda3 4.2.0 installer
export PATH="/Users/jeremy/anaconda/bin:$PATH"


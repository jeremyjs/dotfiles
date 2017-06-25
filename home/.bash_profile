source $HOME/.bash_env

# Load the shell dotfiles, and then some:
# * ~/dotfiles/shell/.path can be used to extend `$PATH`.
# * ~/dotfiles/shell/.local can be used for other settings you don't want to commit.
# path,exports,aliases,functions,git,python,ruby,local
for file in $HOME/dotfiles/shell/.*; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Japanese support
export LC_CTYPE=en_US.UTF-8

# increase open file limit on MacOS to a reasonable number for developing node.js applications
ulimit -n 65536 65536

parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
parse_git () {
  echo "$BROWNORANGE($(parse_git_branch)) $RED$(parse_git_dirty)$NC"
}
export PS1="\u@\h $GREEN\w $(parse_git)$NC $ "

# VENDOR

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda3 4.2.0 installer
export PATH="/Users/jeremy/anaconda/bin:$PATH"
export PATH="/Users/jeremy/anaconda2/bin:$PATH"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 


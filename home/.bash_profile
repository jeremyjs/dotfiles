export BASH_SILENCE_DEPRECATION_WARNING=1

source $HOME/.bash_env

# Load the shell dotfiles, and then some:
# * ~/dotfiles/shell/.path can be used to extend `$PATH`.
# * ~/dotfiles/shell/.local can be used for other settings you don't want to commit.
# exports, git, python, ruby, local, functions, aliases, & utils
for file in $HOME/dotfiles/shell/.*; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Japanese support
export LC_CTYPE=en_US.UTF-8

# increase open file limit on MacOS to a reasonable number for developing node.js applications
ulimit -n 65536 65536

# Default Shell
export SHELL="/usr/local/bin/bash"
export BASH_SHELL="/usr/local/bin/bash"

# Prompt
source $HOME/.bash_prompt

# neovim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# VENDOR

# keychain
eval `keychain --eval --agents ssh --inherit any id_rsa`

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jeremy/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/jeremy/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jeremy/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/jeremy/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# brew completions
HOMEBREW_PREFIX=$(brew --prefix)
if type brew &>/dev/null; then
  for COMPLETION in "$HOMEBREW_PREFIX"/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f ${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh ]];
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
fi

# Have to add /usr/local/bin to the PATH last
PATH=/usr/local/bin:$PATH
export PATH

# pyenv root must precede /usr/local/bin
export PATH="$(pyenv root)/shims:$PATH"

source /Users/jeremy/Development/commonstock/releaser/cs-completion.bash


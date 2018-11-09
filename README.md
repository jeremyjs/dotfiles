My Setup
- system
  - MacOS for dev; Linux for devops
  - iTerm2
  - homebrew
- shell framework
  - zsh
  - antigen
  - oh-my-zsh
- editor
  - VS Code
  - vim
- node
  - zsh-nvm
  - yarn
- python
  - pipenv

TODO
- system
  - commit a standard homebrew package list and setup an auto-sync system
    - brew install trash
    - brew install git
- shell framework
  - rewrite dotfiles install script to setup zsh, antigen, etc.
  - get plugins refresh working
    - right now, have to manually clear .zwc files etc.
  - maintain antigen or antibody
    - and awesome lists for primary packages for all major languages, tools, and frameworks
- git
  - setup a default git global config
    - `git config --global user.name "Jeremy Meyer"`
    - `git config --global user.email "jeremythedev@gmail.com"`
    - `git config --global credential.helper osxkeychain`
  - consolidate the function file into shell/git since they are all git helper functions
- node
  - setup a default npm global config
    - use exact package versions - `echo "save-exact=true" >> ~/.npmrc`
  - setup a list of default global packages
    - `npm install -g mongo-hacker`
- shell aliases, tools, plugins
  - git aliases
  - fuzzy tab completion
  - prompt
- editor
  - explore VS Code plugins
  - fancy fullstack node.js tools for react (react storybook, etc.)
- setup default global configs and bootstrap scripts for each language and framework
  - python
    - setup pipenv, ipython, etc.
  - ruby
    - setup rvm, rails, etc.
  - etc.

Inspiration & Ideas
- https://github.com/mathiasbynens/dotfiles
- ls - https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.aliases
- Bash Prompt - https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.bash_prompt


Dotfiles
- https://github.com/mathiasbynens/dotfiles
- ls - https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.aliases
- Bash Prompt - https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.bash_prompt
Basic
- Google Chrome
- f.lux - https://justgetflux.com
- Spotify
- iTerm2
- Xcode (required dependency for most things)
Command Line
- Homebrew - http://brew.sh/
- Git - `brew install git`
  - `git config --global user.name "Jeremy Meyer"`
  - `git config --global user.email "jeremythedev@gmail.com"`
  - `git config --global credential.helper osxkeychain`
- Vim - `brew install macvim --override-system-vim`
- Node.js
  - Install nvm - https://github.com/creationix/nvm
  - Use nvm to install desired node version - `nvm install NODE_VERSION`
  - npm loader is slow - `npm set progress=false`
  - use exact package versions - `echo "save-exact=true" >> ~/.npmrc`
- Python
  - `brew install python`
  - `pip install --upgrade distribute setuptools pip`
  - `pip install virtualenv`
  - `brew update`
  - `brew install zeromq pyqt`
  - `pip install ipython[zmq,qtconsole,notebook,test]`
  - add to .bashrc - `alias ipy='ipython qtconsole'`
  - `brew tap samueljohn/python`
  - `brew tap homebrew/science`
  - `brew install gcc`
  - `brew install numpy`
  - `brew install scipy`
- Ruby
  - RVM - `curl -L https://get.rvm.io/ | bash -s stable --ruby`
- MongoDB
  - `brew install mongodb`
  - `brew services start mongodb`
  - `npm install -g mongo-hacker`
- Redis
  - `brew install redis`
- PostgreSQL
  - TODO
- DevOps
  - SaltStack
    - MacOS master - `brew install saltstack`
    - Linux Minion - `sudo curl -L https://bootstrap.saltstack.com -o install_salt.sh | sh install_salt.sh`
MySQL
- Install from here: http://dev.mysql.com/downloads/mysql/
- `cd /Library/LaunchDaemons`
- `sudo launchctl load -F com.oracle.oss.mysql.mysqld.plist`
- `sudo launchctl load -w com.oracle.oss.mysql.mysqld.plist`
Java - https://www.java.com/en/
Command Line
- MacOS trash command from command line: `brew install trash`
Developer Apps
- MacVim - http://macvim-dev.github.io/macvim/
- Atom - https://atom.io/
- Firefox - https://www.mozilla.org/en-US/firefox/new/
- ImageOptim - https://imageoptim.com/mac/
- Transmit - http://panic.com/transmit/
- Vagrant - https://www.vagrantup.com/downloads.html
- VirtualBox - https://www.virtualbox.org/wiki/Downloads
System
- Quicksilver - https://qsapp.com/download.php
- Alfred - https://alfredapp.com/
  - System Preferences > Spotlight > Keyboard Shortcuts
  - Disable <cmd> + <space> to spotlight search
  - In Alfred settings, set hotkey to <cmd> + <space>
- Amythest - https://github.com/ianyh/Amethyst/
- Amphetamine - https://itunes.apple.com/us/app/amphetamine/id937984704/
- Jumpcut - http://jumpcut.sourceforge.net/
- Disk Inventory X - http://www.derlien.com/
Workflow
- Notational Velocity - http://notational.net/

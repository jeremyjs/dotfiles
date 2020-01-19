#!/usr/bin/env bash

# https://github.com/welcoMattic/kymsu
# Copied code here for more control and security
# TODO: contribute

if hash brew 2>/dev/null; then
  echo "🍺  Updating Homebrew and all outdated casks"
  brew update
  brew upgrade
  brew cask outdated | cut -f 1 | xargs brew cask reinstall
  echo ""

  echo "👨‍⚕  The Doc is checking that everything is ok."
  brew doctor
  brew missing
  echo ""

  if [[ $1 == "cleanup" ]]; then
    echo "🌬   Cleaning brewery"
    brew cleanup -s
  fi
fi

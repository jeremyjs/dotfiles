#!/usr/bin/env bash

# Based on https://github.com/welcoMattic/kymsu
# TODO: contribute

# Hardcoded to refer to fnm (fast node manager)
# TODO: plugin to nodenv, nvm, etc.

## fnm / node

if hash fnm 2>/dev/null; then
  echo "📦  Install latest node version"
  fnm install latest
  echo ""

  echo "✨  Use latest node version"
  fnm use latest
  echo ""

  echo "🔊  fnm ls"
  fnm ls
  echo ""
fi

## npm

if hash npm 2>/dev/null; then
  echo "💊  Upgrade npm itself"
  npm install npm@latest -g
  echo ""

  echo "🔊  npm list global outdated"
  npm outdated -g --depth=0
  echo ""

  echo "📦  npm upgrade running ..."
  npm update -g
  echo ""

  if printf '%s\n%s\n' "$(npm --version)" 5.0.0 | sort --version-sort --check=silent; then
    echo "🌬   Cleaning npm cache"
    npm cache clean
  fi

  echo "🔍   Verifying npm cache"
  npm cache verify

  echo "👨‍⚕️   Running npm health check"
  npm doctor
fi

## yarn

if hash yarn 2>/dev/null; then
  echo "📦  Yarn upgrade running ..."
  yarn global upgrade -s
  echo ""

  echo "🌬   Cleaning yarn cache"
  yarn cache clean
fi

## pnpm

if hash pnpm 2>/dev/null; then
  echo "📦  pnpm upgrade running ..."
  pnpm i -g pnpm
  echo ""

  echo "🌬   Pruning store"
  pnpm store prune
fi

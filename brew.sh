#!/usr/bin/env bash

###############################################################################
# Homebrew                                                                    #
###############################################################################

# Make sure we’re using the latest Homebrew.
brew update
brew upgrade

# Install rbenv
brew install rbenv
rbenv init
if [ ! -d $(rbenv root)/plugins/rbenv-vars ]; then
  git clone https://github.com/rbenv/rbenv-vars.git $(rbenv root)/plugins/rbenv-vars
fi

# Install nvm
brew install nvm
if [ ! -d ~/.nvm ]; then
  mkdir ~/.nvm
fi

# Install essentials
brew install imagemagick --with-webp


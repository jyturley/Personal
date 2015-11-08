#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=$DIR/
BASH_PROFILE=""
VIMRC=""
GITCONFIG=""
if [[ "$OSTYPE" != "darwin"* ]]; then
	echo "this script only runs on osx currently"
fi

echo "Setting up OSX environment..."
echo "linking .bash_profile..."
BASH_PROFILE=${DIR}.bash_profile
ls $BASH_PROFILE && ln -s $BASH_PROFILE ~/.bash_profile

echo "linking .vimrc file..."
VIMRC=${DIR}.vimrc
ls $VIMRC && ln -s $VIMRC ~/.vimrc

echo "linking .gitconfig file..."
GITCONFIG=${DIR}.gitconfig
ls $GITCONFIG && ln -s $GITCONFIG ~/.gitconfig

if test ! $(which brew); then
	echo "Installing homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install coreutils
brew install findutils
brew install wget
brew cleanup

echo "Done!"


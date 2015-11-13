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

echo "linking files in /bin"
ln -s ${DIR}bin/gh.sh /usr/local/bin/gh

if test ! $(which brew); then
	echo "Installing homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install coreutils
brew install findutils
brew install bash

brew tap homebrew/dupes
brew install homebrew/dupes/grep

$PATH=$(brew --prefix coreutiles)/libexec/gnubin:$PATH

brew cleanup

echo "Done!"


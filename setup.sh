#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=$DIR/
BASH_PROFILE=""
VIMRC=""
GITCONFIG=""
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "OSX"
	echo $DIR
	BASH_PROFILE=${DIR}.bash_profile
	ls $BASH_PROFILE && ln -s $BASH_PROFILE ~/.bash_profile
	
	VIMRC=${DIR}.vimrc
	ls $VIMRC && ln -s $VIMRC ~/.vimrc

	GITCONFIG=${DIR}.gitconfig
	ls $GITCONFIG && ln -s $GITCONFIG ~/.gitconfig

	source ~/.bash_profile
fi

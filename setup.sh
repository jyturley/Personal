#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=$DIR/
BASH_PROFILE=""
VIMRC=""
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "OSX"
	echo $DIR
	BASH_PROFILE=${DIR}.bash_profile
	ls $BASH_PROFILE && ln -s $BASH_PROFILE ~/.bash_profile
	
	VIMRC=${DIR}.vimrc
	ls $VIMRC && ln -s $VIMRC ~/.vimrc
	source ~/.vimrc
	source ~/.bash_profile
fi

#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

source ~/.phpbrew/bashrc;

#set as global:(export `php cli` to env);
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH";

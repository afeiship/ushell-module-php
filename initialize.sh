#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);


## install php56 & use php56 as global php
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php


brew install php56;
brew link php56;


##docs: https://github.com/phpbrew/phpbrew/wiki/Requirement

xcode-select --install
brew install automake autoconf curl pcre bison re2c mhash libtool icu4c gettext jpeg openssl libxml2 mcrypt gmp libevent
brew link icu4c
brew link --force openssl
brew link --force libxml2

##muti version manage:
brew install phpbrew;

## shwo php versions:
phpbrew list;

##switch php version:
phpbrew switch 5.4.18

## temp use php version:
phpbrew use 5.4.22;

##install php5.6.24 & as default version:
phpbrew install 5.6.24 +default;


## add to apache modules:·e-httpd·
# LoadModule php5_module   /usr/local/Cellar/php56/5.6.24/libexec/apache2/libphp5.so

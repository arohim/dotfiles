#!/usr/bin/env bash
source $ZSH/script/lib

if test ! $(which java)
then
    info "Installing java8"
    brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
    success 'Java8 has been installed.'
fi

if test ! $(which adb)
then
    info "Installing adb"
    brew install --cask android-platform-tools
    success 'adb has been installed.'
fi

if test ! -e "~/.android/repositories.cfg"
then
    touch ~/.android/repositories.cfg
fi

brew_cask_install_by_app Android\ Studio android-studio
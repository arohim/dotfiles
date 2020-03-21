#!/usr/bin/env bash
source $ZSH/script/lib

if test ! -e "$ZSH/flutter-install"
then
    git clone https://github.com/flutter/flutter.git flutter-install -b stable
fi
flutter precache
flutter doctor
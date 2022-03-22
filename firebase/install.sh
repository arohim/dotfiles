#!/usr/bin/env bash
source $ZSH/script/lib

curl -sL https://firebase.tools | bash
npm install -g firebase-tools
dart pub global activate flutterfire_cli
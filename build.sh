#!/bin/bash

electron-packager . PaperClient --overwrite --platform=darwin --arch=x64 --version=1.3.3 --asar=true --build-version=0.0.1 --icon ./paperclient.icns

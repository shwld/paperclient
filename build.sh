#!/bin/bash

PKG_VERSION=`node -pe 'require("./dist/package.json").version'`

echo "version: ${PKG_VERSION}"

electron-packager ./dist "PaperClient" \
  --overwrite \
  --platform=darwin \
  --arch=x64 \
  --electron-version=1.4.13 \
  --asar=true \
  --build-version=${PKG_VERSION} \
  --icon=./icon.icns \
  --app-bundle-id=net.shwld.PaperClient \
  --extend-info="extend.plist" \
  --helper-bundle-id=PaperClient \
  --protocol=paper \
  --protocol-name=paper
#   --osx-sign=true

zip -r -y ./"PaperClient-"${PKG_VERSION}-darwin-x64.zip ./"PaperClient"-darwin-x64/"PaperClient".app

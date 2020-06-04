#!/bin/sh
# This is a comment!
rm -f ./dist
mkdir ./dist
echo "Build 01_de_hallo_welt..."
mdbook build ./01_de_hallo_welt
mkdir ./dist/01_de_hallo_welt
cp -r ./01_de_hallo_welt/book/. ./dist/01_de_hallo_welt
echo "... 01_de_hallo_welt build finshed."
echo "Build 01_en_hello_world..."
mdbook build ./01_en_hello_world
mkdir ./dist/01_en_hello_world
cp -r ./01_en_hello_world/book/. ./dist/01_en_hello_world
echo "... 01_en_hello_world build finshed."
echo "Build index..."
mdbook build
cp -r ./book/. ./dist
echo "... index build finshed."
#!/bin/bash

# site generator script

OUT_DIR=./out
SRC_DIR=./src

# rm generated site
rm -rf $OUT_DIR

# rebuild directory structure
mkdir $OUT_DIR
mkdir $OUT_DIR/styles
mkdir $OUT_DIR/scripts
mkdir $OUT_DIR/public

# styles
STYLUS_FILES=$SRC_DIR/styles/*
if [ -e $STYLUS_FILES ]; then
	stylus < $STYLUS_FILES > $OUT_DIR/styles/style.css
fi

# scripts
COFFEE_FILES=$SRC_DIR/scripts/*
if [ -e $COFFEE_FILES ]; then
	coffee -o $OUT_DIR/scripts -c $COFFEE_FILES
fi

# compile html
CONTENT_FILES=$SRC_DIR/content/*
if [ -e $CONTENT_FILES ]; then
	./compile.coffee
fi

# public files
cp -r $SRC_DIR/public $OUT_DIR

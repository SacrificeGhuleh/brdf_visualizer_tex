#!/bin/bash
# Compile my master thesis

DIR="./output/"
FILENAME="main"

mkdir ${DIR}

xelatex -interaction=nonstopmode -synctex=1 -output-directory=${DIR} ${FILENAME}

biber -output-directory=${DIR} ${FILENAME}

xelatex -interaction=nonstopmode -synctex=1 -output-directory=${DIR} ${FILENAME}

xelatex -interaction=nonstopmode -synctex=1 -output-directory=${DIR} ${FILENAME}

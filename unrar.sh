#!/bin/bash

if [ "$1" == "" ]; then
    exit
fi

FOLDER=`dirname $1`
FILE=`basename $1`

if [ "$FOLDER" == "." ]; then
    FOLDER=$PWD
fi

docker run --rm -v "$FOLDER:/files" dachaz/unrar-armhf e -r $FILE

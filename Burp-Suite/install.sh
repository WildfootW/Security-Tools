#!/bin/bash
#   Version 
#   Author: WildfootW
#   GitHub: github.com/Wildfoot
#   Copyright (C) 2018 WildfootW All rights reserved.
#

# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")

if [ "$1" = "" ]; then
    echo "usage: ./install [Burp-folder/jar]"
    exit
fi

Burp_jar="$SCRIPTPATH/$1"
BIN_folder="$SCRIPTPATH/../bin/"

echo "java -jar $Burp_jar" > "$BIN_folder/Burp-Suite"

chmod 755 "$BIN_folder/Burp-Suite"

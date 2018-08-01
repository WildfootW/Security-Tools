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
    echo "usage: ./install [IDA-folder-name]"
    exit
fi

IDA_folder="$SCRIPTPATH/$1"

chmod 755 $IDA_folder"/idaq.exe"
chmod 755 $IDA_folder"/idaq64.exe"

echo "$IDA_folder/idaq.exe" > "$SCRIPTPATH/../bin/ida-x86"
echo "$IDA_folder/idaq64.exe" > "$SCRIPTPATH/../bin/ida-x64"


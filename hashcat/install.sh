#!/usr/bin/env bash
#   Version 
#   Author: WildfootW
#   GitHub: github.com/WildfootW
#   Copyright (C) 2019 WildfootW All rights reserved.
#

# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")

BIN_folder="$SCRIPTPATH/../bin"

hashcat="hashcat-5.1.0"

#wget "https://hashcat.net/files/$hashcat.7z"
#7z x "$hashcat.7z"
ln -s "$SCRIPTPATH/$hashcat/hashcat64.bin" "$BIN_folder/hashcat"

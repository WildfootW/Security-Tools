#!/bin/bash
#   Version 
#   Author: WildfootW
#   GitHub: github.com/WildfootW
#   Copyright (C) 2018 WildfootW All rights reserved.
#

# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")

BIN_folder="$SCRIPTPATH/../bin"

if [ ! -d Local-File-Inclusion-Scanner ]; then
    git clone git@github.com:WildfootW/Local-File-Inclusion-Scanner.git
fi

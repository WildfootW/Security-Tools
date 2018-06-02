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

wget https://www.unix-ag.uni-kl.de/~conrad/krypto/pkcrack/pkcrack-1.2.2.tar.gz
tar -x -f pkcrack-1.2.2.tar.gz
pkcrack_SRC=$SCRIPTPATH/pkcrack-1.2.2/src/
bin_folder=$SCRIPTPATH/../bin/
cd $pkcrack_SRC
make
mv $pkcrack_SRC/pkcrack $bin_folder
mv $pkcrack_SRC/extract $bin_folder/pkcrack-extract
mv $pkcrack_SRC/findkey $bin_folder/pkcrack-findkey
mv $pkcrack_SRC/zipdecrypt $bin_folder/pkcrack-zipdecrypt
rm -rf $SCRIPTPATH/pkcrack*

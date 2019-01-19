#!/bin/bash
#   Version 
#   Author: WildfootW
#   GitHub: github.com/WildfootW
#   Copyright (C) 2019 WildfootW All rights reserved.
#

sudo apt-get update
sudo apt-get install python3 python3-dev python3-pip git
python3 -m pip install --user --upgrade git+https://github.com/arthaud/python3-pwntools.git

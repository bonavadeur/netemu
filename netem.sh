#!/bin/bash

python3 netem.py 100 $1 $2 > /dev/null 2>&1 &

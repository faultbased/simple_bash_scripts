#!/bin/bash

set -x
#prints out cmds about to run; prints out everything
set -u
#errors as soon as it encounters a unassigned variable
set -n
#runs through script without actually running it; practice run if you will
set -f
#changes how shell interacts with and parses glob or wildcard

#all the set flags can be used with opening she-bang

#flow control commands only (for, while, if)
break
continue
readonly

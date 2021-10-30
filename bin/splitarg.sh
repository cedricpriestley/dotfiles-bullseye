#!/bin/bash

cmdline=$1
# IFS='|'
read -a cmdarr <<< "$cmdline"
eval "${cmdarr[1]}"

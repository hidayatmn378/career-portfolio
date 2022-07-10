#!/usr/bin/env bash

ls -l fake-file.txt &> /dev/null && echo "worked"

false && echo "also won't work"

true && echo "This will work"

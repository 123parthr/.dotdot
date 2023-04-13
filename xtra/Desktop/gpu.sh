#!/bin/bash

# stdout gpu
lspci | grep VGA

echo
# OR the one which has [VGA controller] at the end
lspci -vnnn | perl -lne 'print if /^\d+\:.+(\[\S+\:\S+\])/' | grep VGA

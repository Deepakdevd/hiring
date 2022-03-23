#!/bin/bash

## path of the folder
path=/data/audios/

timestamp=$(date +%d%m%Y_%H%M%S)
filename=audio_.wav_$timestamp.log
log=$path$filename
days=2

for file in $(find $path -maxdepth 1 -type f -mmin +$((60*24*$days)) -print);       #find
    do
        echo $file $(ls -l --time-style='full-iso' $file | awk '{print $6}') $(date -Iseconds) >> $logfilename       #log
        rm -f $file     #delete
    done

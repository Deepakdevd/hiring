#!/bin/bash

## path of the folder
path=/data/audios/

timestamp=$(date +%d%m%Y_%H%M%S)
filename=audio_.wav_$timestamp.log
log=$path$filename
days=2

find $path -maxdepth 1 -type f -mmin +$((60*24*$days)) ; >> $log       
rm -f $file    

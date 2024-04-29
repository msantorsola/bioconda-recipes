#!/bin/bash


set -e
set -o pipefail
set -x

if [[ -z "$1" ]]; then
    echo
    echo "Downloads EpiGEN corpora and ext data to <outdir>"
    echo "Usage: $0 <outdir>"
    echo
    exit 1
fi

OUTDIR=$(readlink -f $1)
mkdir -p $OUTDIR
TMP=$(mktemp -d)
cd $TMP
#curl -O -L https://github.com/jiminsong/Spectacle/archive/v1.4.tar.gz > v1.4.tar.gz
#https://github.com/biomedbigdata/epigen/archive/refs/heads/master.zip
curl -L -o epigen.zip https://github.com/msantorsola/epigen/archive/e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f.zip 

#tar -xf 
unzip epigen.zip
cd epigen-e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f
mv $TMP/epigen-e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f/ext/HAPMAP3 $OUTDIR
mv $TMP/epigen-e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f/corpora $OUTDIR



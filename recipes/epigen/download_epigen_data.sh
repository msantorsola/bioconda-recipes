#!/bin/bash


set -e
set -o pipefail
set -x

if [[ -z "$1" ]]; then
    echo
    echo "Downloading EpiGEN data"
    echo "Usage: $0 <outdir>"
    echo
    exit 1
fi

OUTDIR=$(readlink -f $1)
mkdir -p $OUTDIR $OUTDIR/sim $OUTDIR/ext $OUTDIR/temp $OUTDIR/ext/HAPGEN2/Darwin $OUTDIR/ext/HAPGEN2/Linux


TMP=$(mktemp -d)
cd $TMP
curl -L -o epigen.zip https://github.com/msantorsola/epigen/archive/e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f.zip 

#tar -xf 
unzip epigen.zip
cd epigen-e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f
mv $TMP/epigen-e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f/ext/HAPMAP3 $OUTDIR
mv $TMP/epigen-e1c4a4ee97b7dda5beb12be2eaeb5069a479b43f/corpora $OUTDIR


echo "Downloading HAPGEN2"
#linux
wget --no-check-certificate  https://mathgen.stats.ox.ac.uk/genetics_software/hapgen/download/builds/x86_64/v2.2.0/hapgen2_x86_64.tar.gz
tar -xf  hapgen2_x86_64.tar.gz -O  hapgen2_macosx_intel.tar.gz
mv $TMP/hapgen2 $OUTDIR/ext/HAPGEN2/Linux

#macos
wget --no-check-certificate https://mathgen.stats.ox.ac.uk/genetics_software/hapgen/download/builds/macosx_intel/v2.2.0/hapgen2_macosx_intel.tar.gz
tar -xf hapgen2_macosx_intel.tar.gz -O  hapgen2_macosx_intel.tar.gz
mv $TMP/hapgen2 $OUTDIR/ext/HAPGEN2/Linux


echo "Done."
exit 0


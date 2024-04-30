#!/bin/bash

# Tests the extra data download script
TMP=$(mktemp -d)
#sh download_epigen_data.sh $TMP

# Check files exist
for tst in \
    HAPMAP3/ASW.chr21.hap.bz2 \
    corpora/21_TSI_snps.json.bz2 \
; do
    fn=$TMP/$tst
    if [[ ! -e $fn ]]; then
        echo "$fn does not exist"
        exit 1
    else
        echo "$fn exists"
    fi
done


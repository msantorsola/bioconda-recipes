#!/usr/bin/env bash

cat <<EOF >> ${PREFIX}/.messages.txt

Please run "sh download_epigen_data.sh <path-to-dir>" to locally download the EpiGEN data and the required third part tool HAPGEN2.

To check data download, please run "sh run_test_data.sh".

EOF


#!/bin/bash

##https://github.com/bioconda/bioconda-recipes/blob/4a90b4a7dedfdaeb04f967573fc676fdf53caee7/recipes/papaa/build.sh

mkdir -p "${PREFIX}/bin"
mkdir -p ${PREFIX}/share/epigen
cp -r * ${PREFIX}/share/epigen
cp $RECIPE_DIR/download_epigen_data.sh ${PREFIX}/share/epigen 
cp $RECIPE_DIR/run_test_data.sh ${PREFIX}/share/epigen
#cp -r corpora ${PREFIX}/share/epigen
#cp -r ext ${PREFIX}/share/epigen

#ln -s ${PREFIX}/share/epigen/*.py ${PREFIX}/bin/
#ln -s ${PREFIX}/share/epigen/utils/* ${PREFIX}/bin/

cp -r ${PREFIX}/share/epigen/* ${PREFIX}/bin
cp ${PREFIX}/share/epigen/download_epigen_data.sh ${PREFIX}/bin 
cp ${PREFIX}/share/epigen/run_test_data.sh ${PREFIX}/bin

chmod +x ${PREFIX}/bin/*
chmod +x ${PREFIX}/share/epigen/*.py
chmod +x ${PREFIX}/share/epigen/utils/*
chmod +x ${PREFIX}/share/epigen/download_epigen_data.sh
chmod +x ${PREFIX}/share/epigen/run_test_data.sh



#!/bin/bash

#LD_LIBRARY_PATH="" julia
ln -s "${GCC}" "${BUILD_PREFIX}/gcc"

cp -r $SRC_DIR/src/*.jl $PREFIX/bin
cp -r $SRC_DIR/scripts $PREFIX
ln -s $PREFIX/bin/synthetic_data/*  $PREFIX/bin/hapnest
chmod +x $PREFIX/bin/hapnest


julia -e 'import Pkg; Pkg.add("ArgParse")'
julia -e 'import Pkg; Pkg.add("YAML")'
julia -e 'import Pkg; Pkg.add("LsqFit")'
julia -e 'import Pkg; Pkg.add("DataFrames")'
julia -e 'import Pkg; Pkg.add("Conda")'
julia -e 'using Conda; Conda.add("bed-reader")'
julia -e 'import Pkg; Pkg.add("CSV")'
julia -e 'import Pkg; Pkg.add("CategoricalArrays")'
julia -e 'import Pkg; Pkg.add("DelimitedFiles")'
julia -e 'import Pkg; Pkg.add("Distances")'
julia -e 'import Pkg; Pkg.add("Distributions")'
julia -e 'import Pkg; Pkg.add("GpABC")'
julia -e 'import Pkg; Pkg.add("Impute")'
julia -e 'import Pkg; Pkg.add("MendelPlots")'
julia -e 'import Pkg; Pkg.add("Mmap")'
julia -e 'import Pkg; Pkg.add("Plots")'
julia -e 'import Pkg; Pkg.add("Printf")'
julia -e 'import Pkg; Pkg.add("ProgressMeter")'
julia -e 'import Pkg; Pkg.add("PyCall")'
julia -e 'import Pkg; Pkg.add("StatsBase")'
julia -e 'import Pkg; Pkg.add("StatsPlots")'
julia -e 'import Pkg; Pkg.add("YAML")'


rm -f "$PREFIX"/share/julia/site/lib/v*/*.ji
rm -rf "$PREFIX"/share/julia/site/v*/METADATA
rm -f "$PREFIX"/share/julia/site/v*/META_BRANCH




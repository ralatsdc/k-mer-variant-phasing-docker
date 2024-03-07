#!/usr/bin/env bash
eval "$(conda shell.bash hook)"
conda create -n k-mer-variant-phasing -c conda-forge -c bioconda mamba 'snakemake>=8.4' -y
conda activate k-mer-variant-phasing
conda env export | grep -v prefix > environment.yaml
conda deactivate
conda env remove -n k-mer-variant-phasing

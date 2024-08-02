#!/bin/bash
# Use $PMI_RANK for MPICH, $OMPI_COMM_WORLD_RANK for openmpi, and $SLURM_PROCID with srun.
if [ $SLURM_PROCID -eq 0 ]; then
  nsys profile -o ${OUTPUT_DIR}/mynsys.out --stats=true "$@"
else
  "$@"
fi
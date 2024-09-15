#!/bin/bash
#
# Set up a virtual env suitable for running the jupyter notebook and SOAP

set -e

module purge
module load python/3.12.4 gnu_comp/14.1.0 openmpi/5.0.3 parallel_hdf5/1.12.3
python -m pip cache purge

# Name of the new venv to create
venv_name="$(echo $HOME | sed 's/home/apps/')/swift_workshop_env"

# Create an empty venv
python -m venv "${venv_name}"

# Activate the venv
source "${venv_name}"/bin/activate

# Install mpi4py and h5py using precompiled wheels
wheel_dir="/cosma/local/python-wheels/3.12.4/openmpi-5.0.3-hdf5-1.12.3/"
pip install "${wheel_dir}mpi4py-3.1.6-cp312-cp312-linux_x86_64.whl"
pip install "${wheel_dir}h5py-3.11.0-cp312-cp312-linux_x86_64.whl"

# Install other modules
pip install -r requirements.txt
git clone https://github.com/jchelly/VirgoDC.git "${venv_name}/VirgoDC"
pip install "${venv_name}/VirgoDC/python"

# Setup bash kernel
python -m bash_kernel.install

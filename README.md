# SWIFTCON 2024- DMO Simulation Example

This is a notebook which takes you through the complete process of running and analysing a DMO simulation (initial conditions, simulation, halo finding, halo catalogues).

The notebook should be run with a [bash kernel](https://pypi.org/project/bash_kernel/).

If you are using cosma then run the following commands to install all required dependencies and start a notebook.
```
./cosma_env.sh
venv_name="$(echo $HOME | sed 's/home/apps/')/swift_workshop_env"
source "${venv_name}"/bin/activate
jupyter notebook --no-browser
```
For those not on cosma the python dependencies can be found in `requirements.txt`, and the dependencies for the other codes are listed in the notebook itself.

If you're not able to run a step, the files generated [can be downloaded](https://ftp.strw.leidenuniv.nl/SWIFTCON2024_example/)

Questions welcome to mcgibbon@strw.leidenuniv.nl

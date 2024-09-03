![DeepSEA](images/LOGO.png)

# Install
**Install conda to controll environments**



**To access complete project data and code click on Zenodo button**

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13647157.svg)](https://doi.org/10.5281/zenodo.13647157)


**Linux**

Download installer:
```
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
```
Install conda
```
bash Anaconda3-2023.09-0-Linux-x86_64.sh
```
Clone this repository and go to the 'DeepSEA-project' directory:
```
git clone https://github.com/computational-chemical-biology/DeepSEA-project.git
cd DeepSEA-project
```
Install and activate environment depending on you hardware. The gpu-env installation can take a few minutes since it's necessary to install CUDA dependencies:

GPU environment
```
conda env create  -f environment-gpu.yml 
conda activate deepsea-project
```
CPU environment
```
conda env create  -f environment-cpu.yml
conda activate deepsea-project-cpu
```

# Usage
Test the intallation:
```
python DeepSEA.py predict --input test/test.fasta --out test_file
```
If everything is correct, the directory DeepSEA-output shall appear with a csv file within

**Command: predict**
```
python DeepSEA.py predict --input /path/to/fasta --output file_name

Options:
  --input TEXT   Path to input fasta file
  --out TEXT  Output file name
  --model TEXT Number of models to annotate ARP. Options: 1 or 2. Default: 1. 
  --help         Show this message and exit.
```

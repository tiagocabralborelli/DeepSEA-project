![DeepSEA](images/LOGO.png)

# Install
**Install conda to controll environments**

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
git clone https://github.com/tiagocabralborelli/DeepSEA-project.git
cd DeepSEA-project
```
Install and activate environment depending on you hardware. The gpu-env installation can take a few minutes since it's necessary to install CUDA dependencies:
```
conda env create  -f environment-gpu.yml 
conda activate deepsea-project

#Or
conda env create  -f environment-cpu.yml
conda activate deepsea-project-cpu
```

# Usage
First of all, download the neural network model using the following comand. A directory named models will be created to store it:
```
python DeepSEA.py download
```
Test the intallation:
```
python DeepSEA.py predict --input test/test.fasta --output test_file
```
If everything is correct, the directory DeepSEA-output shall appear with a csv file within


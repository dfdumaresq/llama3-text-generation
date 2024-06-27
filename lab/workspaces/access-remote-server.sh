# Access the remote server
# ssh user@remote_server

# Download and install Miniconda
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda -u

# Initialize Miniconda
eval "$($HOME/miniconda/bin/conda shell.bash hook)"

# Create and activate a conda environment
conda create --name myenv python=3.8 -y
conda activate myenv

# Install Jupyter and necessary packages
conda install jupyterlab -y
pip install huggingface_hub accelerate transformers

# Clone your Git repository
git clone https://github.com/dfdumaresq/llama3-text-generation.git
cd your_repository

# Launch Jupyter Notebook
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888

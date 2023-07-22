# 安装miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc

# 安装 jupyterhub
conda create -n JupyterHub -c conda-forge python==3.10
conda activate JupyterHub
conda install -c conda-forge  jupyterlab
conda install -c conda-forge jupyterhub jupyterlab
nohup jupyterhub &
ps -ef | grep jupyterhub

# 创建新环境
conda create -n Datawhale-TP -c conda-forge python==3.10 ipykernel
/home/ubuntu/miniconda3/envs/Datawhale-TP/bin/python

conda install -c conda-forge pandas numpy scikit-learn lightgbm optuna joblib tqdm -y
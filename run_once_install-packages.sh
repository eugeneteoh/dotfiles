# Check if linux
{{ if eq .chezmoi.os "linux" -}}
#!/bin/sh
apt-get update
sudo apt-get install -y vim wget git build-essential

## Install miniconda
if ! conda --version
then
    MINICONDA_FILE=Miniconda3-py39_4.12.0-Linux-x86_64.sh
    wget https://repo.anaconda.com/miniconda/$MINICONDA_FILE

    # check the SHA256sum of Miniconda before executing.
    echo "$78f39f9bae971ec1ae7969f0516017f2413f17796670f7040725dd83fcff5689 $MINICONDA_FILE" | sha256sum --check || exit 1
    bash $MINICONDA_FILE
fi

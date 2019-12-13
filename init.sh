#!/bin/bash 
sudo yum -y install python3
python3 -m venv $HOME/fortinet
source $HOME/fortinet/bin/activate
curl -o $HOME/fortinet/requirements.txt https://raw.githubusercontent.com/salimwp/FortiNetDemo/master/requirements.txt
pip3 install -r $HOME/fortinet/requirements.txt
mkdir -p $HOME/fortinet/ansible
curl -o $HOME/fortinet/ansible/vlan.yaml https://raw.githubusercontent.com/salimwp/FortiNetDemo/master/tut1/vlan.yaml

# -*- mode: ruby -*-
# vi: set ft=ruby ts=2:

Vagrant.configure("2") do |ansibleServer|
    ansibleServer.vm.box = "centos/7"
    ansibleServer.vm.hostname = "ansibleServer.local"
    ansibleServer.vm.network "public_network"
    #ansibleServer.ssh.username = 'vagrant'
    #ansibleServer.ssh.password = 'vagrant'
    #ansibleServer.ssh.insert_key = 'true'
    ansibleServer.vm.provider "virtualbox" do |v|
        v.gui = true
        v.customize ["modifyvm", :id, "--memory", "1024"]
    end
    ansibleServer.vm.provision "shell", path: "init.sh", privileged: false
end
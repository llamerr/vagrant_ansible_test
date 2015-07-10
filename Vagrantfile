# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider "virtualbox" do |v|
    v.name = "testing_vagrant"
    v.gui = true
    v.memory = 2048
    v.cpus = 2
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
  end

  config.vm.network "public_network"

  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "provision/install_ansible.sh"
  config.vm.provision :shell, path: "provision/update_ansible_config.sh"
  config.vm.provision :shell, path: "provision/install_roles.sh"
  config.vm.provision :shell, path: "provision/run_ansible.sh"
end

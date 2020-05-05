Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provider "virtualbox" do |vm|
    vm.memory = 2048
  end
  config.vm.network :private_network, id: "default-network", type: "dhcp", ip: "192.168.1.0"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 3001, host: 3001
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.synced_folder "./cindy-next", "/usr/app/cindy"
  config.vm.synced_folder "./shell", "/usr/app/shell"
  config.vm.provision "docker"
  config.vm.provision "shell", path: "provision.sh"
end

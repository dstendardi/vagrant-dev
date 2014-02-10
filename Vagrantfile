Vagrant.configure("2") do |config|
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.box = "precise64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  
  # Override auto-mount of '.' to '/home/vagrant/src'
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/src"

  config.vm.provision "docker"
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "forwarded_port", guest: 9200, host: 9200

  config.vm.provision "shell", path: "provision.sh"

end

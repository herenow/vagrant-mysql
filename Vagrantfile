# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"

  # Init script
  config.vm.provision :shell, :path => "bootstrap.sh"

  # Crateio default port
  # Modify the host port to have Crate running on a different port on your local machine
  config.vm.network "forwarded_port", guest: 6379, host: 6379

end

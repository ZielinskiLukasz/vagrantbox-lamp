# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  
  # config.vm.box = "hashicorp/precise64"

  config.vm.box = "puphpet/ubuntu1604-x64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  
  # config.vm.network "private_network", ip: "192.168.0.201"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  
  config.vm.network "public_network", ip: "192.168.0.201", bridge: "enp2s0"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.vm.network :forwarded_port, guest: 9001, host: 9001

  # config.vm.network :forwarded_port, guest: 9000, host: 9000
  #   Vagrant cannot forward the specified ports on this VM, since they
  # would collide with some other application that is already listening
  # on these ports. The forwarded port to 9000 is already in use
  # on the host machine.

  # To fix this, modify your current project's Vagrantfile to use another
  # port. Example, where '1234' would be replaced by a unique host port:

  #   config.vm.network :forwarded_port, guest: 9000, host: 1234

  # Sometimes, Vagrant will attempt to auto-correct this for you. In this
  # case, Vagrant was unable to. This is usually because the guest machine
  # is in a state which doesn't allow modifying port forwarding. You could
  # try 'vagrant reload' (equivalent of running a halt followed by an up)
  # so vagrant can attempt to auto-correct this upon booting. Be warned
  # that any unsaved work might be lost.


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yaml"
  end  

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end

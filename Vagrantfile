# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   # vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   # vb.gui = true
  #   # vb.linked_clone = true
  # end

  # config.vm.boot_timeout = 600

  config.vm.define "atouatiS" do |server|
    server.vm.box = "mynixos"
    # server.vm.hostname = "atouatiS"
    # server.vm.network "private_network", ip: "192.168.56.110"
    server.vm.provision :nixos, run: 'always', path: "conf/server.nix"
  end

  # # Define second machine (ServerWorker)
  # config.vm.define "atouatiSW" do |worker|
  #   worker.vm.box = "mynixos"
  #   worker.vm.hostname = "atouatiSW"
  #   worker.vm.network "private_network", ip: "192.168.56.111"
  #   worker.vm.provision :nixos, run: 'always', path: "conf/worker.nix"
  # end
  #


  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080


  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  #NOTE: but because we built this one locally...
  # config.vm.box_check_update = false
end

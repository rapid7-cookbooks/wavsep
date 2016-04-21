# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.hostname = 'wavsep-server'
  config.vm.network :private_network, ip: '33.33.33.10'
  # config.vm.network :forwarded_port, guest: 8080, host: 8080

  config.vm.provision :chef_solo do |chef|
    chef.run_list = ['recipe[wavsep::server]']
  end
end

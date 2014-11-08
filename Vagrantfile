# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	# Use Ubuntu 14.04 64-bit.
  	config.vm.box = "ubuntu/trusty64"

  	# Run the provisioning script.
  	config.vm.provision :shell, path: "bootstrap.sh"

	# Forward the port used by meteor.
	config.vm.network :forwarded_port, guest: 3000, host: 3000

	config.vm.provider "virtualbox" do |v|
		v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
	end

end

# Description
For ease of use, i changed the version variables inside the source of nixbox to match latest stable version 24.05 (hopefuly stable)
# Usage:
Use:

```make build```
Will be building the box inside the /BUILD_DIR folder which would not be needed after building the .box file, that is all we need it for, IoT pdf says "The evaluation process will happen on the computer of the evaluated
group." so will simply just build the .box before starting corrections, then we would only need dimple vagrant up --> vagrant ssh.


```make run```
Just gets everything up and running, you are now ready to vagrant ssh into the box


Sample Vagrantfile
------------------

I will be injecting our target nixos configuration inside the provision :nixos section:

example -->

```ruby
Vagrant.configure("2") do |config|

  # Disable shared virtualbox mount path (not vboxsf installed on guest)
  config.vm.synced_folder '.', '/vagrant', disabled: true

  # Use a suitable NixOS base. VM built with nixbox are tested to work with
  # this plugin.
  config.vm.box = "nixos-23.11"

  # Add the htop package
  config.vm.provision :nixos,
    run: 'always',
    expression: {
      environment: {
        systemPackages: [ :htop ]
      }
    }

end
```

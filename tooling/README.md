
# Build the box:
(from /tooling)
make build
#NOTE: /tooling folder would not be present after building the .box file, that is all we need it for, IoT pdf says "The evaluation process will happen on the computer of the evaluated
group." so will simply just build the .box before starting corrections, then we would only need dimple vagrant up --> vagrant ssh.
# Add the box to your vagrant (locally)
vagrant box add (anynameyouwant) tooling/nixos-24.05-virtualbox-x86_64.box

Sample Vagrantfile
------------------

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



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

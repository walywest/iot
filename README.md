# Description
For ease of use, i included the nixbox project inside the BUILD_DIR, and made necessary tweaks (OS version, configuration.nix...).

# Usage:
- ```make```
    Will be building the box inside the /BUILD_DIR folder using packer, installation scripts and nix expression configurations
    After this, the box will be added to vargant.

- ```vagrant up```
    Just gets everything up and running based on vagrantfile, you are now ready to vagrant ssh into your machines
    ```vagrant ssh machine_name`

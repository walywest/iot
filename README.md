# Description
For ease of use, i included the nixbox project inside the BUILD_DIR, and made necessary tweaks (OS version, configuration.nix...).

# Part 1 and Part 2:
## Description:
**description needed here**
## Usage:
- ```make```
    Will be building the box inside the /BUILD_DIR folder using packer, installation scripts and nix expression configurations
    After this, the box will be added to vargant.

- ```vagrant up```
    Just gets everything up and running based on vagrantfile, you are now ready to vagrant ssh into your machines
    ```vagrant ssh machine_name`
# Part 3:
## Description:
**description needed here**
## Requirements:
**requirements needed here**
## Usage:
run ```./part3/scripts/ressources.sh``` to spin up local single node k3d wrapped cluster, with a CI that uses argocd to keep our placeholder app synced with github repo.
**more to be described here**
# Part 4:
(note, this part still needs small tweeks)
**SAME AS PART 3** but we will be using our own local gitlab instance to host our placeholder apps.
## Usage:
run ```./bonus/scripts/ressources.sh && ./bonus/scripts/gitlab.sh```

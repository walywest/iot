{ config, pkgs, ... }:

{
    # Place here any custom configuration specific to your organisation (locale, ...)
    # if you want it to be part of the packer base image to be used with vagrant.


  #NOTE: enables flakes, in order to make box environment more reproducable and choose from the right stable channels
  #FIX: still needs some workaround the variable hostnames
  # nix.settings.experimental-features = [ "nix-command" "flakes" ];
  #NOTE: defines the initial version of the system
  # system.stateVersion = "24.11";

# Packages to be added to our base image lihya (anyname) so we don't have to install them every time
  environment.systemPackages = with pkgs; [
    vim
    kubectl
    docker
    argocd
    lsof
   (writeShellScriptBin "kgn" ''
            sudo k3s kubectl get nodes -o wide
  '') ];
}

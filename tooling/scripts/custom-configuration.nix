{ config, pkgs, ... }:

{
    # Place here any custom configuration specific to your organisation (locale, ...)
    # if you want it to be part of the packer base image to be used with vagrant.

  # Packages

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.05";
  environment.systemPackages = with pkgs; [
    vim
    kubectl
    k3s
    docker
    argocd
  ];
  services.k3s.enable = true;
}

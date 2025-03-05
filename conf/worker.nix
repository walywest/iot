{ config, pkgs, ... }:
{
  # Packages
  system.stateVersion = "24.05";
  environment.systemPackages = with pkgs; [
    vim
    kubectl
  ];

  # K3S Worker mode
  # services.k3s = {
  #   enable = true;
  #   role = "agent";
  #   token = "<randomized common secret>";
  #   serverAddr = "https://192.168.56.110:6443";
  # };
  #
}

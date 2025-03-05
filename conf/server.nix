{ config, pkgs, ... }:
{
  # Packages
  system.stateVersion = "24.05";
  environment.systemPackages = with pkgs; [
    vim
    kubectl
  ];
  services.k3s.enable = true;

  # K3S Server mode
  services.k3s = {
    enable = true;
    role = "server";
    token = "<randomized common secret>";
    clusterInit = true;
  };

}

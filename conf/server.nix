{ config, pkgs, ... }:
{

  # K3S Server mode
  services.k3s.roles = "server"
  services.k3s.token = "<randomized common secret>";
  services.k3s.clusterInit = true;

}

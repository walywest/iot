{ config, pkgs, ... }:
{

  # K3S Agent mode
  services.k3s.roles = "agent";
  services.k3s.token = "<randomized common secret>";
  services.k3s.serverAddr = "https://192.168.56.110:6443";

}

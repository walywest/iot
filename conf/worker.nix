{ config, pkgs, ... }:
{

  # K3S Agent mode
  services.k3s = {
    enable = true;
    role = "agent";
    token = "<randomized common secret>";
    serverAddr = "https://192.168.56.110:6443";
  };

}

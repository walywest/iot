{ config, pkgs, ... }:
{

  # K3S Server mode
    networking.firewall.allowedTCPPorts = [ 6443 8080 ];
    networking.firewall.allowedUDPPorts = [ 6443 8080 ];

  services.k3s.role = "server";
  services.k3s.token = "c77db0e81aeb9fc5e214948422cdd037";
  services.k3s.clusterInit = true;


}

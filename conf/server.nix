{ config, pkgs, ... }:
{

  # K3S Server mode
  networking.firewall.allowedTCPPorts = [ 6443 2379 2380 10250 10251 10252 ];
  #
  networking.firewall.allowedUDPPorts = [ 8472 ];
  #
  # networking = {
  #   hostName = "atouatiS";
  #   interfaces.eth0.ipv4.addresses = [{
  #     address = "192.168.56.110";
  #     prefixLength = 24;
  #   }];
  #   # defaultGateway = "192.168.56.1"; # Replace with your actual gateway
  #   nameservers = [ "8.8.8.8" "8.8.4.4" ]; # Replace with your preferred DNS servers
  # };
  #
  services.k3s = {
    enable = true;
    role = "server";
    token = "c77db0e81aeb9fc5e214948422cdd037"; # Replace with your actual cluster token
    # extraFlags = [
    #   "--write-kubeconfig-mode=0644"
    #   "--disable=servicelb"
    #   "--disable=traefik"
    #   "--disable=local-storage"
    #   "--node-ip=192.168.56.110" # Replace with your VM's IP address
    # ];
    clusterInit = true;
  };
  #
  # # networking.enableIPv4Forwarding = true;
  #
  # boot.kernelParams = [ "swapaccount=1" ];


}

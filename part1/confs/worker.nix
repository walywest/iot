{ config, pkgs, ... }:
{

  # K3S Agent mode

    #NOTE: maybe just disable the firewall?
    networking.firewall.allowedTCPPorts = [ 6443 2379 2380 10250 10251 1052 2400];
    networking.firewall.allowedUDPPorts = [  8472 ];

    services.k3s = {
        enable = true;
        role = "agent";
        token = "a8c422186fdc9be9846c1f87c00f73d2";
        serverAddr = "https://192.168.56.110:6443";
        extraFlags = [
            "--node-ip=192.168.56.111"
        ];
    };

}

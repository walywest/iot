{config, pkgs, ...}:
{
    #NOTE: maybe just disable the firewall?
    networking.firewall.allowedTCPPorts = [ 6443 2379 2380 10250 10251 1052 2400];
    networking.firewall.allowedUDPPorts = [  8472 ];


    services.k3s = {
        enable = true;
        role = "server";
        token = "a8c422186fdc9be9846c1f87c00f73d2";
        extraFlags = [
        "--node-ip=192.168.56.110"
        "--write-kubeconfig-mode=0644"
        "--disable=servicelb"
        "--disable=traefik"
        "--disable=local-storage"
            ];
        #NOTE: naming this option is confusing and docs are not elaborating well about the meaning of "clustering", researching...
        #clusterInit = true;
    };
}

{config, pkgs, ...}:
{
    networking.firewall.allowedTCPPorts = [ 6443 2379 2380 10250 10251 1052 2400];
    networking.firewall.allowedUDPPorts = [  8472 ];
    # networking = {
    #         # hostName = "atouatiS";
    #         # useDHCP = false;
    # 
    #         interfaces.eth1 = {
    # 
    #         ipv4.addresses = [
    #             {
    #             address = "192.168.56.110";
    #             prefixLength = 24;
    #         }];
    # 
    #     };
    # 
    #     # nameservers = [ "8.8.8.8" "8.8.4.4"];
    # };
    services.etcd.enable = false;

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
        clusterInit = true;
    };
}

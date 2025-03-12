{config, pkgs, ...}:
{

    networking.firewall.allowedTCPPorts = [ 6443 2379 2380 10250 10251 1052 2400];
    networking.firewall.allowedUDPPorts = [  8472 ];


    networking.usePredictableInterfaceNames = false;
    # networking = {
    # 
    #         interfaces.eth1 = {
    #         useDHCP = false;
    # 
    #         ipv4.addresses = [
    #             {
    #             address = "192.168.56.110";
    #             prefixLength = 24;
    #         }];
    # 
    #     };
    # };
    #NOTE: systemd.networkd
}

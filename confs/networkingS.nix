{config, pkgs, ...}:
{

    networking.firewall.allowedTCPPorts = [ 6443 2379 2380 10250 10251 1052 2400];
    networking.firewall.allowedUDPPorts = [  8472 ];
    networking = {
            # hostName = "atouatiS";
            # useDHCP = false;
    
            interfaces.eth1 = {
    
            ipv4.addresses = [
                {
                address = "192.168.56.110";
                prefixLength = 24;
            }];
    
        };
    
        # nameservers = [ "8.8.8.8" "8.8.4.4"];
    };
}

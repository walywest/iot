{config, pkgs, ...}:
{
    #NOTE: useful commands for development purpose ----->>>
    #NOTE:------------------------------------------------------
    environment.systemPackages = with pkgs; [

        #NOTE: check status
        (writeShellScriptBin "reb" ''sudo nixos-rebuild switch'')

        #NOTE: troubleshoot

        (writeShellScriptBin "ed" ''vim /etc/nixos/vagrant-provision.nix'')

        #NOTE: fresh start of k3s, resets cluster, turning off all dependencies
        (writeShellScriptBin "k_reset" ''
                sudo /vagrant/scripts/reset_cluster.sh
        '')

    ];
    #NOTE:-------------------------------------------------

  networking.firewall.enable = false;
    networking.hosts = {
      "192.168.56.110" = ["app2.com" "app1.com" "app3.com" "app4.com"];
    };
  # networking.firewall.allowedTCPPorts = [
  #   6443 # k3s: required so that pods can reach the API server (running on port 6443 by default)
  #   30007 # testing
  #   # 2379 # k3s, etcd clients: required if using a "High Availability Embedded etcd" configuration
  #   # 2380 # k3s, etcd peers: required if using a "High Availability Embedded etcd" configuration
  # ];
  # networking.firewall.allowedUDPPorts = [
  #   # 8472 # k3s, flannel: required if using multi-node for inter-node networking
  # ];
    services.k3s = {
        enable = true;
        role = "server";
        extraFlags = [ "--node-ip=192.168.56.110"
            "--disable=traefik"
        ];
    };
}

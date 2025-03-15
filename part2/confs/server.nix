{config, pkgs, ...}:
{
    #NOTE: useful commands for development purpose ----->>>
    #NOTE:------------------------------------------------------
    environment.systemPackages = with pkgs; [

        #NOTE: check status
        (writeShellScriptBin "kgp" ''sudo k3s kubectl get pods -o wide'')
        (writeShellScriptBin "kgd" ''sudo k3s kubectl get deployments -o wide'')
        (writeShellScriptBin "kga" ''sudo k3s kubectl get all -n kube-system'')
        (writeShellScriptBin "kgn" ''sudo k3s kubectl get nodes -o wide'')
        (writeShellScriptBin "reb" ''sudo nixos-rebuild switch'')

        #NOTE: troubleshoot
        (writeShellScriptBin "net_log" ''journalctl -u systemd-networkd --no-pager --since "10 minutes ago"'')
        (writeShellScriptBin "k_log" ''journalctl -u k3s.service --no-pager --since "1 hour ago"'')

        (writeShellScriptBin "ed" ''vim /etc/nixos/vagrant-provision.nix'')

        #NOTE: fresh start of k3s, resets cluster, turning off all dependencies
        (writeShellScriptBin "k_reset" ''
                sudo /vagrant/scripts/reset_cluster.sh
        '')

    ];
    #NOTE:-------------------------------------------------

  networking.firewall.allowedTCPPorts = [
    6443 # k3s: required so that pods can reach the API server (running on port 6443 by default)
    # 2379 # k3s, etcd clients: required if using a "High Availability Embedded etcd" configuration
    # 2380 # k3s, etcd peers: required if using a "High Availability Embedded etcd" configuration
  ];
  networking.firewall.allowedUDPPorts = [
    # 8472 # k3s, flannel: required if using multi-node for inter-node networking
  ];
  services.k3s.enable = true;
  services.k3s.role = "server";
  services.k3s.extraFlags = toString [
    # "--debug" # Optionally add additional args to k3s
  ];

}

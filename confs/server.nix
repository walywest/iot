{config, pkgs, ...}:
{
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

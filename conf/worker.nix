{ config, pkgs, ... }:
{

  # K3S Agent mode
  services.k3s.role = "agent";
  services.k3s.token = "c77db0e81aeb9fc5e214948422cdd037";
  services.k3s.serverAddr = "https://192.168.56.110:6443";

}

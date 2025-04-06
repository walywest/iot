cd /root
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
chmod 600 ~/.kube/config
echo "Done! kubectl is now configured to use your k3s cluster."

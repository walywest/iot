
echo "Waiting for traefik ingress to be configured in our cluster, please be patient.(lets talk and avoid making this awkard)"
# Wait for Traefik LoadBalancer to get an external IP
echo "Waiting for Traefik LoadBalancer to get an external IP..."
while [[ -z $(sudo k3s kubectl get service traefik -n kube-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}' 2>/dev/null) ]]; do
  echo "Traefik LoadBalancer IP not assigned yet, waiting..."
  echo "Status of the traefik installation pod"
  sudo k3s kubectl get all -n kube-system | grep pod/helm-install-traefik
  sleep 5
done
echo "Traefik LoadBalancer is ready with IP: $(sudo k3s kubectl get service traefik -n kube-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}')"

sudo k3s kubectl apply -f "https://raw.githubusercontent.com/traefik/traefik/v3.3/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml"
sudo k3s kubectl apply -f "https://raw.githubusercontent.com/traefik/traefik/v3.3/docs/content/reference/dynamic-configuration/kubernetes-crd-rbac.yml"

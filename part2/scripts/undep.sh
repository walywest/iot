# Set the deployments directory (use a custom variable name, not PATH)
DEPLOYMENTS_DIR=${DEPLOYMENTS:-"/home/dumbledoor/Desktop/mynixbox/part2/scripts/"}

# Define versions
VERSION_DEEPSEEK="1.8.1"
VERSION_LATEST="1.12.0"
VERSION_OLD="0.44.0"

# Select the version to use (using VERSION_OLD as per your comment)
VERSION=${VERSION_LATEST}

# Apply Kubernetes manifests
sudo k3s kubectl delete -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v${VERSION}/deploy/static/provider/baremetal/deploy.yaml"
sudo k3s kubectl delete -f "${DEPLOYMENTS_DIR}/app-three.yml"
sudo k3s kubectl delete -f "${DEPLOYMENTS_DIR}/app-two.yml"
sudo k3s kubectl delete -f "${DEPLOYMENTS_DIR}/app-one.yml"
sudo k3s kubectl delete -f "${DEPLOYMENTS_DIR}/ingress-nginx.yml"

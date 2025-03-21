
DEPLOYMENTS_DIR=${DEPLOYMENTS:-"/home/dumbledoor/Desktop/mynixbox/part2/scripts"}
# Define versions
VERSION_DEEPSEEK="1.8.1"
VERSION_LATEST="1.12.0"
VERSION_BLOG="1.7.1"
VERSION_OLD="0.44.0"

# Select the version to use (using VERSION_OLD as per your comment)
VERSION=${VERSION_LATEST}

# Apply Kubernetes manifests
sudo k3s kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v${VERSION}/deploy/static/provider/baremetal/deploy.yaml"
sudo k3s kubectl apply -f "${DEPLOYMENTS_DIR}/expose.yml"

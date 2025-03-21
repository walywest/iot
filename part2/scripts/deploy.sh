# Set the deployments directory (use a custom variable name, not PATH)
DEPLOYMENTS_DIR=${DEPLOYMENTS:-"/home/dumbledoor/Desktop/mynixbox/part2/scripts"}

sudo k3s kubectl apply -f "${DEPLOYMENTS_DIR}/app-three.yml"
sudo k3s kubectl apply -f "${DEPLOYMENTS_DIR}/app-two.yml"
sudo k3s kubectl apply -f "${DEPLOYMENTS_DIR}/app-one.yml"
sudo k3s kubectl apply -f "${DEPLOYMENTS_DIR}/ingress-nginx.yml"

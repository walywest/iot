# Set the deployments directory (use a custom variable name, not PATH)
DEPLOYMENTS_DIR=${DEPLOYMENTS:-"/home/dumbledoor/Desktop/mynixbox/part2/scripts"}
PROD_DIR="/vagrant/scripts"

sudo k3s kubectl apply -f "${PROD_DIR}/app-two.yml"
sudo k3s kubectl apply -f "${PROD_DIR}/app-one.yml"
sudo k3s kubectl apply -f "${PROD_DIR}/app-three.yml"
sudo k3s kubectl apply -f "${PROD_DIR}/traefik-routes.yml"
sudo k3s kubectl apply -f "${PROD_DIR}/traefik-default-route.yml"

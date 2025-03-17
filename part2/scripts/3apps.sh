#NOTE: apply Ingress controller
sudo k3s kubectl delete deployment,service --all
sudo k3s kubectl apply -f \
https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/\
deploy/static/provider/cloud/deploy.yaml
sudo k3s kubectl apply -f /vagrant/scripts/app-three.yml
sudo k3s kubectl apply -f /vagrant/scripts/app-two.yml
sudo k3s kubectl apply -f /vagrant/scripts/app-one.yml
sudo k3s kubectl apply -f /vagrant/scripts/ingress-nginx.yml

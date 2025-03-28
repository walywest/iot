sudo k3d cluster create k3d-cluster.yml --image rancher/k3s:v1.32.3-k3s1 -p "8082:30007@server:0"
# #NOTE: deploying argocd
# sudo kubectl create namespace argocd
# sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# #NOTE: deploying wil42
sudo kubectl create namespace dev
sudo kubectl apply -n dev -f playground.yml

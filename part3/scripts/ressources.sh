sudo k3d cluster create --config ../conf/k3d-cluster.yml
# #NOTE: deploying argocd
sudo kubectl apply -f ../conf/argocd-conf.yml
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
sudo kubectl apply -f ../conf/desired-state.yml

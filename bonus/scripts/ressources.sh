DIR="/home/dumbledoor/Desktop/mynixbox/bonus"

sudo k3d cluster create --config ${DIR}/conf/k3d-cluster.yml
# #NOTE: deploying argocd
sudo kubectl apply -f ${DIR}/conf/argocd-conf.yml
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# #NOTE: deploying application ressource with argocd which would automate wil42 deployment and CI
sudo kubectl apply -f ${DIR}/conf/desired-state.yml

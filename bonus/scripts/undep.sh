DIR="/home/dumbledoor/Desktop/mynixbox/bonus"


sudo kubectl delete -f ${DIR}/conf/desired-state.yml
sudo kubectl delete -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
sudo kubectl delete -f ${DIR}/conf/argocd-conf.yml

DIR="/home/dumbledoor/Desktop/mynixbox/bonus"

sudo helm repo add gitlab https://charts.gitlab.io/
sudo helm repo update
sudo helm upgrade --install gitlab gitlab/gitlab \
  --timeout 600s \
  --namespace gitlab \
  --set global.hosts.domain=example.com \
  --set global.hosts.externalIP=172.18.0.2 \
  --set global.ingress.enabled=true \
  --set certmanager-issuer.email=me@example.com \
  --set global.edition=ce \
  --set gitlab-runner.install=false
  # --set global.ingress.configureCertmanager=false \
  # --set certmanager.install=false \
  # --set nginx-ingress.controller.service.nodePorts.http=30080 \
  # --set nginx-ingress.controller.service.nodePorts.https=30443 \

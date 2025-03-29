
#NOTE: username: admin
#NOTE: password: -->
sudo kubectl -n argocd get secret argocd-initial-admin-secret \
          -o jsonpath="{.data.password}" | base64 -d; echo

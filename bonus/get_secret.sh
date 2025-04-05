# username is admin
# Get ArgoCD default admin password
kubectl -n argocd get secret argocd-initial-admin-secret \
          -o jsonpath="{.data.password}" | base64 -d; echo
          # 2g2nv7oQgiXRL2ut

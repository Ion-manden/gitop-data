k3d cluster create gitops-data-cluster --servers 3 --agents 3 --wait

# Create argocd namespace
kubectl apply -f ../infra/argo/cd/namespace.yaml

# Install argo cd
kubectl apply -f ../infra/argo/cd/install.yaml

# Add top level argo cd application resource - this will auto discover all other applications
kubectl apply -f ../infra/application.yaml


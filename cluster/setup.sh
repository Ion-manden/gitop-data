# k3d cluster create gitops-data-cluster --servers 3 --agents 3 --wait

# Create argocd namespace
KUBECONFIG=/etc/rancher/k3s/k3s.yaml kubectl apply -f ../infra/argo/cd/namespace.yaml

# Install argo cd
KUBECONFIG=/etc/rancher/k3s/k3s.yaml kubectl apply -f ../infra/argo/cd/install.yaml

# Add top level argo cd application resource - this will auto discover all other applications
KUBECONFIG=/etc/rancher/k3s/k3s.yaml kubectl apply -f ../infra/application.yaml


# KUBECONFIG=/etc/rancher/k3s/k3s.yaml kubectl delete -f ../infra/application.yaml
# KUBECONFIG=/etc/rancher/k3s/k3s.yaml kubectl delete -f ../infra/argo/cd/install.yaml

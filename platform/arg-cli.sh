#############################################################
# Install ArgoCD CLI
#############################################################

echo "===================================================="
echo " Installing ArgoCD CLI"
echo "===================================================="

if command -v argocd >/dev/null 2>&1; then
    echo "✅ ArgoCD CLI already installed"
    argocd version --client
else
    VERSION=$(curl -fsSL https://api.github.com/repos/argoproj/argo-cd/releases/latest | grep '"tag_name"' | cut -d '"' -f4)

    sudo curl -L \
        "https://github.com/argoproj/argo-cd/releases/download/${VERSION}/argocd-linux-amd64" \
        -o /usr/local/bin/argocd

    sudo chmod +x /usr/local/bin/argocd

    echo "✅ ArgoCD CLI installed"
    argocd version --client
fi

echo ""

echo "===================================================="
echo " Installed Components"
echo "===================================================="

helm version
kubectl version --client
argocd version --client

echo ""
echo "✅ Environment is ready."
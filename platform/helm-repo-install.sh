#!/bin/bash

set -euo pipefail

#############################################################
# Configure Helm Repositories
#############################################################

echo "===================================================="
echo " Configuring Helm repositories"
echo "===================================================="

helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server >/dev/null 2>&1 || true
helm repo add jetstack https://charts.jetstack.io >/dev/null 2>&1 || true
helm repo add eks https://aws.github.io/eks-charts >/dev/null 2>&1 || true
helm repo add external-secrets https://charts.external-secrets.io >/dev/null 2>&1 || true
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts >/dev/null 2>&1 || true
helm repo add grafana https://grafana.github.io/helm-charts >/dev/null 2>&1 || true
helm repo add argo https://argoproj.github.io/argo-helm >/dev/null 2>&1 || true

helm repo update

echo ""
echo "✅ Helm repositories configured."
echo ""
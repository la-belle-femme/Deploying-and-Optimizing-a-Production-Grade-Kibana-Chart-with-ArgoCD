#!/bin/bash
echo "í³¸ Capturing Demo Evidence..."

echo "=== ArgoCD Applications ==="
kubectl get applications -n argocd -o wide

echo -e "\n=== ELK Stack Resources ==="
kubectl get all -n elk-demo

echo -e "\n=== Pod Details ==="
kubectl get pods -n elk-demo -o wide
kubectl top pods -n elk-demo

echo -e "\n=== Services and Endpoints ==="
kubectl get svc -n elk-demo
kubectl get endpoints -n elk-demo

echo -e "\n=== Elasticsearch Health ==="
curl -s http://localhost:9200

echo -e "\n=== Cluster Info ==="
kubectl cluster-info
kubectl get nodes

echo -e "\n=== Namespaces ==="
kubectl get namespaces

echo -e "\n=== Git Status ==="
git log --oneline -5
git status

echo -e "\n=== Current IP ==="
curl -s http://checkip.amazonaws.com

echo -e "\n=== Port Forwards ==="
ps aux | grep port-forward | grep -v grep

echo "âœ… Evidence captured for demo documentation"

#!/bin/bash
export KUBECONFIG=$(terraform output -json proxmox | jq -r '.kubeconfig')
echo ""
kubectl cluster-info
echo ""
kubectl get nodes

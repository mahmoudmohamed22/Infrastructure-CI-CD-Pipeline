#!/bin/bash

kubectl apply -f NameSpace.yaml
kubectl apply -f ClusterRole.yaml
kubectl apply -f ServiceAccount.yaml
kubectl apply -f ClusterRoleBinding.yaml
kubectl apply -f PVC.yaml
kubectl apply -f PV.yaml
kubectl apply -f Deployment.yaml
kubectl apply -f Service-LoadBalancer.yaml

kubectl apply -f docker-registry/docker-private-registry.json -n default
kubectl rollout status deploy/docker-private-registry-deployment
kubectl apply -f docker-registry/docker-private-registry-proxy.json -n default

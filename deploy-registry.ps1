kubectl apply -f docker-registry -R
kubectl rollout status deploy/docker-private-registry-deployment -n infrastructure

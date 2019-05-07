
Start-Process powershell {
    Write-Host "Starting port forwarding for the docker registry"
    $POD_NAME=$(kubectl get pods -l app=docker-private-registry -n default |sed -e '1d'|awk '{print $1}');
    kubectl port-forward ${POD_NAME} 5000:5000 -n default
}
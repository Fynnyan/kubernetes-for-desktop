
### First

#### Windows
Check if the ``kubernates for docker desktop`` is enabled and ready and if needed reset kubernetes in the docker settings

#### Linux

TBD

#### Mac

TBD
Kubernetes for Mac

### Steps

Create Nginx ingress and deafult-http-backend
``kubectl apply -f nginx-ingress/namespaces/nginx-ingress.yaml -Rf nginx-ingress``

Deploy local docker registry
``deploy-registry.ps1`` | ``deploy-registry.sh``

Start the port forwarding for the registry
``port-forward-registry.ps1`` | ``port-forward-registry.sh``

Prepare and push images to local registry
``prepare-and-push-images.ps1``

### Credits

Used help for the different processes

[Nginx Ingress](https://github.com/jnewland/local-dev-with-docker-for-mac-kubernetes)
[Docker Registry](https://github.com/SeldonIO/k8s-local-docker-registry)
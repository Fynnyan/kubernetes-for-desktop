## kubernetes-for-desktop

A compact package to quickly and easily start and use a local kubernetes instance. 
With the use of [xip.io](http://xip.io/) for the ingresses.

# Note: This is a first version I cobbled together for my usage. Expect things to change!


#### Windows
Check if the ``kubernates for docker desktop`` is enabled and ready and if needed reset kubernetes in the docker settings.

For more Help: [docker docs on kubernetes for windows](https://docs.docker.com/docker-for-windows/#kubernetes)

#### Mac

As far as i know the configs should work with kubernetes for mac but i didn't test it. So no guarantees!

### Steps

Kubernetes is up and running

Create Nginx ingress and deafult-http-backend
``kubectl apply -f nginx-ingress/namespaces/nginx-ingress.yaml -Rf nginx-ingress``

Deploy local docker registry
``deploy-registry.ps1`` | ``deploy-registry.sh``

Start the port forwarding for the registry
``port-forward-registry.ps1`` | ``port-forward-registry.sh``

**Prepare and push images to local registry**

Update the filter for your needs in ``prepare-and-push-images.ps1`` and run it.

### Credits

As we all stand on the shoulders of giants so did I. I used help for the different processes and credits go to these People:

* jnewland - [Nginx Ingress](https://github.com/jnewland/local-dev-with-docker-for-mac-kubernetes)
* SeldonIO - [Docker Registry](https://github.com/SeldonIO/k8s-local-docker-registry)

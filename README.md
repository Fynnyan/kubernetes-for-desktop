## kubernetes-for-desktop

A compact package to quickly and easily start and use a local kubernetes instance. 
With the use of [xip.io](http://xip.io/) a wildcard DNS for the ingresses.


#### Windows
Check if the ``kubernates for docker desktop`` is enabled and ready and if needed reset kubernetes in the docker settings.

For more Help: [docker docs on kubernetes for windows](https://docs.docker.com/docker-for-windows/#kubernetes)


#### Mac

As far as i know the configs and deployments should work with kubernetes for mac but i didn't test it. So no guarantees!

### Steps

Add in the Docker settings, in the tab deamon ``localhost:5000`` and ``127.0.0.1:5000`` to the insecure registries. 
If this is not done we wont be able to push the images  

Check if Kubernetes is up and running (i.e with``kubectl get all --all-namespaces``)

Deploy local docker registry

``deploy-registry.ps1`` | ``deploy-registry.sh``

Create Nginx ingress and deafult-http-backend

``deploy-http-backend.ps1`` | ``deploy-http-backend.sh``


To access / push images we need to port forward the port of the container with our registry to our host
 
Start the port forwarding for the registry

``port-forward-registry.ps1`` | ``port-forward-registry.sh``

To test if everything went right you can deploy the example project

switch to the ``example`` folder and use ``mvnw clean install docker:push`` to build and deploy it 
``kubectl apply -f .\example\kubernetes\deployment.yml``

you can see the example on [http://example.127.0.0.1.xip.io/](http://example.127.0.0.1.xip.io/) 

### Possible Errors

* It is possible that the push to the registry because the docker deamon can't find it on localhost. 
If you encounter this problem just restart docker and that should solve it. 

### Misc

The script ``prepare-and-push-images.ps1`` can help you tag and push your images to the Kubernetes repo

### Credits

As we all stand on the shoulders of giants so do I. I used help from the net for the different processes / deployments 
and credits go to the following people:

* jnewland - [Nginx Ingress](https://github.com/jnewland/local-dev-with-docker-for-mac-kubernetes)
* SeldonIO - [Docker Registry](https://github.com/SeldonIO/k8s-local-docker-registry)

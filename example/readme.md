A simple example app made with spring boot and fabric8 to test the setup

use the mvn wrapper to build and push the image
``mvnw clean build docker:push``

if the image is pushed you can deploy the example with
``kubectl apply -f .\kubernetes\deployment.yml``

and the example is acessable on [http://example.127.0.0.1.xip.io/](http://example.127.0.0.1.xip.io/)

# build-and-learn

- Run *docker build -t docker-gs-ping .* for building docker image.
- *docker run -p 8080:8080 docker-gs-ping* for running golang project inside docker container.
- To update the tag of a docker image, use command *docker tag image-name:verion-tag new-image-name:new-verion-tag*


- *kubectl expose deployment go-backend --type=LoadBalancer --name=go-lb-service* - Use this for creating load balancer service
- *kubectl port-forward 9000:8080* - This command is used to forward 9000 port from local machine to kubernetes cluster.

Lab Plan - 

Labs 

 

- Setup a golang project and create dockerfile. 

- Push docker image to docker hub. 

- Create a kubernetes cluster and use docker image in kubernetes. 

- Create 3 users and service account and grant access of different levels. 

- Create a react project and integrate it in k8s cluster. 

- Setup Postgres and integrate in K8s cluster through various storage mechanisms. 

- Update golang project and react app to perform CRUD operations, and publish images as new versions. 

- Update images of project and setup networking. 

- Add some network policies from 3 tier web application. 

- Add logging capabilities in cluster through prometheus. 

- Setup a grafana dashboard. 

- Create a terraform module to deploy all required resources in Azure. (Run terraform destroy after testing) 

- Create a CircleCI pipeline for deploying and destroying infrastructure on Azure. 

- Migrate all images from Dockerhub to ACR. 

- Setup kubernetes cluster on AKS manually through command line. 

- Create a ArgoCD pipeline for continuously deploy k8s manifests through automation. 

- Repeat 12 to 16 steps to setup cluster on AWS. 

- Review infrastructure to accommodate more users. 
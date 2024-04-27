# Simple project for pipeline tests

This project is beeing used by Jenkins running on Kubernetes for .Net Core Docker deployment.

## Build and Run steps

```bash
docker build -t helloworld .
docker run -d -p 5000:80 helloworld
```

## Deploy to Kubernetes

```bash
kubectl create ns helloworld
kubectl apply -f helloworld-deployment.yaml --namespace=helloworld
kubectl create -f helloworld-service.yaml --namespace=helloworld
```#   d o t n e t - c o r e - h e l l o w o r l d  
 
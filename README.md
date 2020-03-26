# HUGO Sample site with docker, helm and Kubernetes

## Requirements
- hugo v.68 or better (versions on ubuntu / debian are too old)
- docker
- helm v3
- a Kubernetes cluster

## Running hugo on Hyper-V Windows 10 (assuming primary.mshome.net)
```
hugo server -b 0.0.0
```
browse to http://primary.mshome.net:1313

## Building the container
```
docker build . -t jfmatth/hugoapp:0.1
docker push jfmatth/hugoapp:0.1
```
## Installing via Helm (v3)
```
helm install hugo lke-chart
```
## Upgrade after changes to content
```
helm upgrade hugo lke-chart  --set timestamp="$(date)"
```


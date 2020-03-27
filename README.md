# HUGO Sample site with docker, helm and Kubernetes

## Requirements
- hugo v.68 or better (versions on ubuntu / debian are too old)
- docker
- helm v3
- a Kubernetes cluster

## Cloning this repo for use
Since this repo uses submodules, make sure you clone it with the --recursive flag.

```
git clone --recursive https://github.com/jfmatth/lke-example.git
```

## Running hugo on Hyper-V Windows 10 (assuming primary.mshome.net)

To run a HUGO server to show the current content, run the following

```
hugo server --bind 0.0.0
```
browse to http://primary.mshome.net:1313

## Building the container
```
docker build . -t jfmatth/hugoapp:0.1
docker push jfmatth/hugoapp:0.1
```
## Installing via Helm (v3)

*Laptop*
```
helm install hugo lke-chart -f lke-chart/values-laptop.yaml
```

*Production*
```
helm install hugo lke-chart -f lke-chart/values-prod.yaml
```

## Upgrade after changes to content
```
helm upgrade hugo lke-chart  --set timestamp="$(date)"
```


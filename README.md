# HUGO Sample site with docker, helm and Kubernetes

## Requirements
- hugo v.68 or better (versions on ubuntu / debian are too old)
- docker
- helm v3
- a Kubernetes environment you have setup and access to for HELM

## Cloning this repo for use
Since this repo uses submodules, make sure you clone it with the --recursive flag.

```
git clone --recursive https://github.com/jfmatth/lke-example.git
```

## Running a hugo server to see your content rendered

To run a HUGO server to show the current content, run the following

```
hugo server --bind 0.0.0
```

## Building the container for kubernetes use
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

## Updating the site and pushing to Kubernetes (i.e. Workflow)
- update content 
- rebuild docker container (./buildit.sh)
- update the HELM chart to refresh the pods 
    
    ```
    helm upgrade hugo lke-chart -f <values for environment> --set timestamp="$(date)"
    ```

## notes

I am working on moving the workflow into a github action, stay tuned for updates to this repo
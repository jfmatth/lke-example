# Building the container

```
docker build . -t jfmatth/hugoapp:0.1
docker push jfmatth/hugoapp:0.1
```


# Installing Helm (v3)
```
helm install hugo lke-chart
```

# Upgrade after changes to content
```
helm upgrade hugo lke-chart
```


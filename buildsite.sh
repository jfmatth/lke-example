docker build . -t jfmatth/lke-example-hugo
docker push jfmatth/lke-example-hugo
#helm upgrade hugo lke-chart --set timestamp="$(date)"
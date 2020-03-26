docker build . -t jfmatth/hugoapp
docker push jfmatth/hugoapp
helm upgrade hugo lke-chart --set timestamp="$(date)"
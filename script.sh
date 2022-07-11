apt update -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo systemctl start docker
docker run -dit -p 9090:9090 --name prometheus prom/prometheus
docker run -dit -p 3000:3000 --name grafana grafana/grafana
docker start prometheus grafana
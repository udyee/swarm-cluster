
#######################################################################################################################
# Docker Swarm Join
#   - Docker Install
#   - Docker Swarm Join
#######################################################################################################################

echo "  Docker Swarm Join -> Start"

echo "    - Docker Install"
echo "      sudo yum install -y yum-utils device-mapper-persistent-data lvm2"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

echo "      sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "      sudo yum install -y docker-ce docker-ce-cli containerd.io"
sudo yum install -y docker-ce docker-ce-cli containerd.io

echo "      sudo systemctl start docker"
sudo systemctl start docker

echo "      sudo systemctl enable docker"
sudo systemctl enable docker

echo "    - Docker Swarm Join"

echo "      sudo docker swarm join --token SWMTKN-1-4vqe9wuxnknxjk9p7u65ti12adslg2jn930ojd8e2kbsfjk2i2-e62zh06rgz9un7u03on11mhcg 10.0.61.175:2377"
sudo docker swarm join --token SWMTKN-1-4vqe9wuxnknxjk9p7u65ti12adslg2jn930ojd8e2kbsfjk2i2-e62zh06rgz9un7u03on11mhcg 10.0.61.175:2377

sleep 1

echo "  Docker Swarm Join -> End"

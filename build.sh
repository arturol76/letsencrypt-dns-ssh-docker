#example:
#./build.sh 192.168.2.96

IMAGE_NAME=arturol76/letsencrypt-dns-ssh

echo building...
docker -H $1 build -t $IMAGE_NAME .

echo pushing...
docker -H $1 push $IMAGE_NAME
#example:
#./build.sh 192.168.2.96

IMAGE_NAME=arturol76/letsencrypt-dns-ssh

read -p "Do you want to build image? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo

    echo building image...
    docker -H $1 build --no-cache -t $IMAGE_NAME .
else
    echo
fi

read -p "Do you want to push image to docker repository? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo

    echo pushing...
    docker -H $1 push $IMAGE_NAME
else
    echo
fi


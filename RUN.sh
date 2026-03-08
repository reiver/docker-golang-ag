IMAGE_NAME="golang-in-a-box"
USER_NAME="godev"

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER IMAGES                                                           #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker images

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER CONTAINERS (ALL)                                                 #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker ps -a

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER CONTAINERS                                                       #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker ps

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# CREATE NEW DOCKER CONTAINER                                             #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker run                                              \
	-v "./Workspaces:/home/${USER_NAME}/Workspaces" \
	-it                                             \
	"${IMAGE_NAME}"                                 \
	/bin/bash

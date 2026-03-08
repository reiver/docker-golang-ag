IMAGE_NAME="golang-in-a-box"

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER IMAGES BEFORE BUILDING                                           #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker images

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER BUILD                                                            #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker build                          \
	--build-arg USER_UID=$(id -u) \
	--build-arg USER_GID=$(id -g) \
	 -t "${IMAGE_NAME}" .

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER IMAGES AFTER BUILDING                                            #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker images

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER IMAGE PRUNE (dangling images)                                    #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker image prune

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER IMAGES AFTER PRUNING                                             #"
echo "#                                                                         #"
echo "###########################################################################"
echo

docker images

echo
echo "###########################################################################"
echo "#                                                                         #"
echo "# DOCKER IMAGE NAME                                                       #"
echo "#                                                                         #"
echo "###########################################################################"
echo

echo "The Docker image was created at:"
echo "${IMAGE_NAME}"
echo
echo "You should NOT have to do this very often."
echo

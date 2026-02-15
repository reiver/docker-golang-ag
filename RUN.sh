IMAGE_NAME=golang-ag
USER_NAME=godev

docker run                                              \
	-v "./Workspaces:/home/${USER_NAME}/Workspaces" \
	-it                                             \
	"${IMAGE_NAME}"                                 \
	/bin/bash

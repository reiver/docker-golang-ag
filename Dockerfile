FROM golang:1.26-bookworm

ARG USER_NAME=godev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update && apt-get install -y \
	bash                             \
	curl                             \
	git                              \
	nano                             \
	sudo                             \
	tree                             \
	unzip                            \
	&& rm -rf /var/lib/apt/lists/*

RUN groupadd --gid $USER_GID $USER_NAME                                          \
	&& useradd --uid $USER_UID --gid $USER_GID -m $USER_NAME                 \
	&& echo $USER_NAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USER_NAME \
	&& chmod 0440 /etc/sudoers.d/$USER_NAME

ENV SHELL=/bin/bash
ENV GOPATH=/home/$USER_NAME/go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

USER $USER_NAME
WORKDIR /home/$USER_NAME

CMD ["sleep", "infinity"]

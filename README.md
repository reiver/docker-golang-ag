# docker golang ag

A Docker based development-environment for doing Golang development.

## Create Docker Image

To create the Docker image, run:

```bash
bash BUILD.sh
```

## Run Docker Image

To run and _go inside_ the Docker image, run:

```bash
bash RUN.sh
```

## Workspaces Directory

Whatever you put inside the `Workspaces/` directory will be accessible from inside the Docker container.

This (inside the `Workspaces/` directory) is where, for example, you would `git clone` your git repositories.

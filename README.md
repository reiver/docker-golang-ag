# docker golang ag

A Docker based development-environment for doing Golang development.

## Workspaces Directory

Whatever you put inside the `Workspaces/` directory will be accessible from inside the Docker container (at `/home/godev/Workspaces`).

This (inside the `Workspaces/` directory) is where, for example, you would `git clone` your git repositories.

That way you can access the (same) source-code from both _inside_ and _outside_ the Docker container.

This is useful, for example, if you use an IDE _outside_ the Docker container to work with the source-code.
While, at the same time, use various `go` and other terminal-based developer programs from _inside_ the Docker container.

## Create Docker Image

To create the Docker image, run:

```bash
bash BUILD.sh
```

(You won't have to do this very often.)

## Run Docker Image

To run and _go inside_ the Docker image, run:

```bash
bash RUN.sh
```

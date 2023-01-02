# Containerized Jupyter Lab and Python setup

This is a simple containerized Jupyter Lab and Python setup. Two extensions are added to the Jupyter Lab: a code formatter (with black and isort) and an execution timer.

## Quick start

```sh
make
```

Or if you want to specify another python version, another image name or another host port than 8888:

```sh
make PYTHON_VERSION=3.9 IMAGE_NAME=vildmedpap PORT=666
```

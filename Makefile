.DEFAULT_GOAL := build-and-run

PYTHON_VERSION := 3.10
IMAGE_NAME := jupyterlab
PORT := 8888

# INSTRUCTION: Build and run ------------------------------------------ (BEGIN)
.PHONY: build-and-run
build-and-run: build run

.PHONY: build
build:
	@DOCKER_BUILDKIT=1 docker build \
			 --build-arg PYTHON_VERSION=${PYTHON_VERSION} \
			 --tag ${IMAGE_NAME} \
			 --file Dockerfile .

.PHONY: run
run:
	@docker run \
			--rm -it \
			--volume ${PWD}/notebooks:/notebooks \
			--publish ${PORT}:8888 \
			${IMAGE_NAME}:latest
# ----------------------------------------------------------------------- (END)
VERSION := $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
REGISTRY ?=
IMAGE_PREFIX ?= hephy
IMAGE := ${REGISTRY}${IMAGE_PREFIX}/base:${VERSION}

build:
	docker build --no-cache -t ${IMAGE} rootfs

push: build
	docker push ${IMAGE}

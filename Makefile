.PHONY: build run

NAME = pylotcode/docker-codetasks
TAG ?= latest

build:
	docker build -t $(NAME):$(TAG) .

run: build
	docker run --rm -it $(NAME):$(TAG) $(ARGS)

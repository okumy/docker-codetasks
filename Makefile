.PHONY: build run

NAME = mxen/docker-codetasks
TAG ?= latest

build:
	docker build -t $(NAME):$(TAG) .

run: build
	docker run --rm -it $(NAME):$(TAG) $(ARGS)

push: build
	docker push $(NAME):$(TAG)
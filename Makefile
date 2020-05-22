.PHONY: build run

NAME = playpauseanstop/docker-codetasks
TAG ?= latest

build:
	docker build -t $(NAME):$(TAG) .

run: build
	docker run --rm -it $(NAME):$(TAG) $(ARGS)

NAME = albertux/supervisord
VERSION = 0.0.2

.PHONY: all build run

all: build

build:
	docker build -t $(NAME) .
run:
	docker run -P --name supervisor -d $(NAME)

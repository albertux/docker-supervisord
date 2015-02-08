NAME = albertux/supervisord
VERSION = 0.0.1

.PHONY: all build run

all: build

build:
	docker build -t $(NAME) .
run:
	docker run -p 22 -p 80 --name supervisor -d albertux/supervisord

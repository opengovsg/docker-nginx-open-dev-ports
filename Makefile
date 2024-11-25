MAJOR_MINOR_PATCH=$(shell grep -oP '^FROM\s+\S+:\K[0-9]+\.[0-9]+\.[0-9]+' Dockerfile)

PREFIX := opengovsg/nginx-open-dev-ports
TAG := $(MAJOR_MINOR_PATCH)

dev: build run

build:
	@echo "Building image:"
	docker build -t $(PREFIX):$(TAG) .

run:
	@echo "Running container:"
	docker run --rm \
		-p 80:80 \
		-p 443:443 \
		-p 3000:3000 \
		-p 3001:3001 \
		-p 3002:3002 \
		-p 4000:4000 \
		-p 5000:5000 \
		-p 5001:5001 \
		-p 8000:8000 \
		-p 8080:8080 \
		-p 8888:8888 \
		-p 9000:9000 \
		$(PREFIX):$(TAG)

TAG = $(shell git rev-parse --abbrev-ref HEAD | tr -d '\n')
PREFIX = drud/nginx-proxy

dev:
	docker build -t $(PREFIX):$(TAG) .

latest: dev
	docker tag $(PREFIX):$(TAG) $(PREFIX):latest

canary: dev
	docker push $(PREFIX):$(TAG)

all: latest canary
	docker push $(PREFIX):latest%
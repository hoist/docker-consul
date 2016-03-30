default: push

build:
	docker build -t consul .

tag: build
	docker tag consul hoist/consul

push: tag
	docker push hoist/consul
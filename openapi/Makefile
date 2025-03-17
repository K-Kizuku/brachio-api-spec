PWD = $(shell pwd)

all: fmt gen

.PHONY: setup
setup:
	go mod download

gen: *.yaml
	docker run --rm \
		-v "${PWD}:/local/src" \
		-v "${PWD}/build:/local/dist/openapi" \
		openapitools/openapi-generator-cli generate \
			-g openapi-yaml \
			-i /local/src/openapi.yaml \
			-o /local/dist

view: build/openapi.yaml
	docker run -d \
		-p 8085:8080 \
		-e SWAGGER_JSON=/src/openapi.yaml \
		-v ${PWD}/build:/src \
		swaggerapi/swagger-ui

fmt:
	go run github.com/google/yamlfmt/cmd/yamlfmt .

gen: gen/openapi gen/proto
gen/openapi:
	make -C openapi gen

fmt: fmt/openapi
fmt/openapi:
	make -C openapi fmt


gen/proto:
	make -C proto gen-proto

buf/lint:
	make -C proto buf-lint
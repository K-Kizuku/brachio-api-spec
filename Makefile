
gen: gen/openapi
gen/openapi:
	make -C openapi gen

fmt: fmt/openapi
fmt/openapi:
	make -C openapi fmt
# Runs dev server.
.PHONY: dev
dev:
	@echo "===> Running dev environement"
	@git submodule update --init --recursive
	@docker run -ti \
		--rm \
		--user $(shell id -u):$(shell id -g) \
		-p 1313:1313 \
		-v $(PWD):/src\
		klakegg/hugo:0.74.3-alpine \
		serve

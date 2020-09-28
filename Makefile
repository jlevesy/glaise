# Runs dev server.
.PHONY: dev
dev: submodules
	@echo "===> Running dev environement"
	@docker run -ti \
		--rm \
		--user $(shell id -u):$(shell id -g) \
		-p 1313:1313 \
		-v $(PWD):/src\
		klakegg/hugo:0.74.3-alpine \
		serve

.PHONY: submodules
submodules:
	@echo "===> Fetching submodules"
	@git submodule update --init --recursive

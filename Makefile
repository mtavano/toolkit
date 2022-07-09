version:
	cargo --version
	rustc --version
	@echo "RUSTC_WRAPPER=$${RUSTC_WRAPPER}"
	sccache --show-stats || true

compose-up:
	docker-compose -f $(PKG)/docker-compose.yml up

compose-down:
	docker-compose -f $(PKG)/docker-compose.yml down

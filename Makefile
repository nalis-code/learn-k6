.PHONY: deps insall-k6 run-k6-smoke-tests run-functional-tests

deps:
	go mod download
	go install github.com/onsi/ginkgo/v2/ginkgo

install-k6:
	sudo dnf install -y https://dl.k6.io/rpm/repo.rpm
	sudo dnf install -y k6

run-k6-smoke-tests:
	cd tests && \
	k6 run smoke-test.js

run-functional-tests:
	cd tests/functional-tests && \
	ginkgo

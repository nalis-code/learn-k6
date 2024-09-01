
deps:
	go mod download
	go install github.com/onsi/ginkgo/v2/ginkgo


run-k6-smoke-test:
	cd tests && \
	k6 run smoke-test.js


run-functional-tests:
	cd tests/functional-tests && \
	ginkgo
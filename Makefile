.PHONY: deps insall-k6 run-k6-smoke-tests run-functional-tests

deps:
	go mod download
	go install github.com/onsi/ginkgo/v2/ginkgo

install-k6:
	sudo apt-get update
	sudo apt-get install -y dirmngr --install-recommends
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
	echo "deb https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list
	sudo apt-get update
	sudo apt-get install -y k6


run-k6-smoke-tests:
	cd tests && \
	k6 run smoke-test.js

run-functional-tests:
	cd tests/functional-tests && \
	ginkgo

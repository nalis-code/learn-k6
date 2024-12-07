.PHONY: install-go clean-go verify-go

# Define the version and file locations
GO_VERSION := 1.23.4
GO_URL := https://go.dev/dl/go$(GO_VERSION).linux-amd64.tar.gz
GO_TAR := go$(GO_VERSION).linux-amd64.tar.gz

install-go:
	@echo "Removing any existing Go installation..."
	sudo rm -rf /usr/local/go
	@echo "Downloading Go $(GO_VERSION)..."
	curl -fsSL $(GO_URL) -o $(GO_TAR)
	@echo "Extracting Go to /usr/local..."
	sudo tar -C /usr/local -xzf $(GO_TAR)
	rm -f $(GO_TAR)
	@echo "Adding /usr/local/go/bin to PATH (temporary for this session)..."
	export PATH=$$PATH:/usr/local/go/bin
	@echo "Golang $(GO_VERSION) installed successfully!"

clean-go:
	@echo "Removing existing Go installation..."
	sudo rm -rf /usr/local/go
	@echo "Golang removed successfully!"

verify-go:
	@echo "Verifying Go installation..."
	/usr/local/go/bin/go version || { echo "Go not installed properly."; exit 1; }

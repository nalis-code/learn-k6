# Use Fedora as the base image
FROM fedora:latest

# Install Go and dependencies
RUN dnf install -y go git make

# Install k6
RUN dnf install -y https://dl.k6.io/rpm/repo.rpm && \
    dnf install -y k6

# Set up the working directory
WORKDIR /workspace

# Ensure the /workspace directory is writable
RUN mkdir -p /workspace/.cache/go-build && chmod -R 777 /workspace

# Set the user to root (default)
USER root

# Set GOCACHE environment variable to a writable directory
ENV GOCACHE=/workspace/.cache/go-build

# Copy the current directory contents into the container at /workspace
COPY . /workspace

# Set default command
CMD ["/bin/bash"]

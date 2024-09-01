# Use Fedora as the base image
FROM fedora:latest

# Install Go and dependencies
RUN dnf install -y go git make

# Install k6
RUN dnf install -y https://dl.k6.io/rpm/repo.rpm && \
    dnf install -y k6

# Set up the working directory
WORKDIR /workspace

# Copy the current directory contents into the container at /workspace
COPY . /workspace

# Set default command
CMD ["/bin/bash"]

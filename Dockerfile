# Use Fedora or CentOS as the base image
FROM fedora:latest

# Install k6
RUN dnf install -y https://dl.k6.io/rpm/repo.rpm && \
    dnf install -y k6

# Set the default command
CMD ["/bin/bash"]

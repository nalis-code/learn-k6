# Use Fedora as the base image
FROM fedora:latest

# Install Go
RUN dnf install -y go

# # Install k6
# RUN dnf install -y https://dl.k6.io/rpm/repo.rpm && \
#     dnf install -y k6

# Set up the working directory
WORKDIR /workspace

# Default command (can be overridden in Jenkinsfile)
CMD ["/bin/bash"]

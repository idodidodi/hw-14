FROM ubuntu:latest

# Install python3 and sudo for Ansible
RUN apt-get update && \
    apt-get install -y python3 sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Keep the container running
CMD ["tail", "-f", "/dev/null"]

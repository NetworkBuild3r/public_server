#!/bin/bash

# Install Docker
apt-get update
apt-get install -y docker.io

# Ensure Docker starts on boot
systemctl start docker
systemctl enable docker

# Create a directory for backups and appdata
mkdir -p /opt/appdata /opt/backups

# Pull the GitHub runner Docker image
docker pull myoung34/github-runner:latest

# Start the runner container
docker run -d \
  --name github-runner \
  -e RUNNER_NAME="docker-runner" \
  -e RUNNER_WORK_DIRECTORY="/runner" \
  -e RUNNER_TOKEN="<your-github-runner-token>" \
  -e RUNNER_REPOSITORY_URL="https://github.com/your-username/project-repo" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/appdata:/opt/appdata \
  myoung34/github-runner:latest

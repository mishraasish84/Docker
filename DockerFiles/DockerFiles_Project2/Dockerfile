# Base image
FROM ubuntu:20.04

# Metadata  (LABEL): Adds metadata to the image such as maintainer and description.
LABEL maintainer="Your Name <your.email@example.com>"
LABEL description="A simple Dockerfile example demonstrating various functionalities."

# Set working directory -Working Directory (WORKDIR): Sets the working directory inside the container.
WORKDIR /app

# Environment variables
ENV ENV_VAR=value

# Run commands Run Commands (RUN): Executes commands in the container during the image build process.
# Used here to update package lists and install packages.
RUN apt-get update && apt-get install -y \
    package1 \
    package2 \
    && rm -rf /var/lib/apt/lists/*

# Copy files
COPY file.txt /app/

# Expose ports
EXPOSE 8080

# Healthcheck Healthcheck (HEALTHCHECK): Defines a command to check the container's health status.
# In this case, it uses curl to check if the application is responding on port 8080.When the container is running, 
#Docker periodically executes the health check command defined by the HEALTHCHECK instruction (curl -f http://localhost:8080 || exit 1). 
#If the command fails (i.e., if the application is not responding on port 8080), Docker marks the container as "unhealthy." Conversely, 
#if the command succeeds, Docker marks the container as "healthy." Note "docker ps" Status display the health.
HEALTHCHECK --interval=30s --timeout=5s \
    CMD curl -f http://localhost:8080 || exit 1

# Command (preferred form) Specifies the default command to run when the container starts. It's overridden if a command is provided at runtime.
CMD ["echo", "Hello, world!"]

# Entrypoint, s used to specify the main command to run when the container starts. Any arguments passed to docker run are appended to the ENTRYPOINT command.
ENTRYPOINT ["/bin/bash", "-c"]

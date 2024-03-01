# Stage 1: Build stage
FROM ubuntu:20.04 AS builder

# Set working directory
WORKDIR /app

# Copy HTML file
COPY app/index.html ./

# Stage 2: Production stage
FROM httpd:2.4 AS production

# Copy HTML file from the builder stage
COPY --from=builder /app/index.html /usr/local/apache2/htdocs/

# Expose port 8099
EXPOSE 8099

# Define environment variables
ENV APACHE_LOG_DIR=/usr/local/apache2/logs

# Set entrypoint
ENTRYPOINT ["httpd-foreground"]

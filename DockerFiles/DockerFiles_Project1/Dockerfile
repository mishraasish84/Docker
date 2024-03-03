# Stage 1: Build stage # This runs ubuntu image as builder.All changes are dome to builder1
FROM ubuntu:20.04 AS builder

# Set working directory, builder is set with /app as working dir builder1+
WORKDIR /app

# Copy HTML file. builder is copied with app/index.html from local machine to /app dir builder1++
COPY app/index.html ./

# Stage 2: Production stage . Completely stage different. A new image names htttpd is downloaded as production (this i at same layer as builder)
FROM httpd:2.4 AS production

# Copy HTML file from the builder stage (builder1++ containers index.html is copied to /usr/local....on httpd image running ad production)
COPY --from=builder /app/index.html /usr/local/apache2/htdocs/

# Expose port 8099
EXPOSE 8099

# Define environment variables
ENV APACHE_LOG_DIR=/usr/local/apache2/logs

# Set entrypoint
ENTRYPOINT ["httpd-foreground"]

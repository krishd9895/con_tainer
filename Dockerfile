# Use a base image
FROM alpine:latest

# Install curl
RUN apk update && apk add --no-cache curl

# Copy the script to the container
COPY entrypoint.sh /entrypoint.sh

# Set the script as executable
RUN chmod +x /entrypoint.sh

# Run the script as the default command
CMD ["/entrypoint.sh"]

# Use a base image
FROM alpine:latest

# Install curl
RUN apk update && apk add --no-cache curl

# Set the URL environment variable
ENV URL $URL

# Download the tar file
RUN curl -o kmltb_bot_image_backup.tar $URL

# Load the Docker image
RUN docker load -i kmltb_bot_image_backup.tar

# Run the container
CMD ["docker", "run", "--name", "new_kmltb_bot_container", "-d", "kmltb_bot_image_backup"]

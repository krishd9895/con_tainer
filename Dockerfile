# Use a base image
FROM alpine:latest

# Install curl
RUN apk update && apk add --no-cache curl

# Set environment variables
ENV URL=$URL
ENV FILE_NAME=kmltb_bot_image_backup.tar

# Download the tar file
RUN curl -o $FILE_NAME $URL

# Load the Docker image
RUN docker load -i $FILE_NAME

# Run the container
CMD ["docker", "run", "--name", "new_kmltb_bot_container", "-d", "kmltb_bot_image_backup"]

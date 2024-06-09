#!/bin/sh

# If URL is not provided as an environment variable
if [ -z "$URL" ]; then
    # Prompt the user to input the URL
    read -p "Please enter the URL: " URL
fi

# Download the tar file
curl -o kmltb_bot_image_backup.tar "$URL"

# Load the Docker image
docker load -i kmltb_bot_image_backup.tar

# Run the container
docker run --name new_kmltb_bot_container -d kmltb_bot_image_backup

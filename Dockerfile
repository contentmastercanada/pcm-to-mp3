# Base image with n8n pre-installed
FROM n8nio/n8n:latest

# Switch to root to install ffmpeg
USER root

# Install ffmpeg using Alpine package manager
RUN apk add --no-cache ffmpeg

# Switch back to n8n user
USER node

# No CMD needed – base image already defines it

EXPOSE 80 # Ensure Railway routes traffic correctly

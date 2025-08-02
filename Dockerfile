# Use the official n8n Alpine-based image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install ffmpeg using Alpine's package manager (apk)
RUN apk add --no-cache ffmpeg

# Switch back to the default non-root user
USER node

# Start n8n
CMD ["n8n"]

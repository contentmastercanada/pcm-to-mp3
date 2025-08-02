# Use official n8n image
FROM n8nio/n8n:latest

# Install ffmpeg using Alpine package manager
USER root
RUN apk add --no-cache ffmpeg

# Switch back to n8n user for security
USER node

# Start n8n
CMD ["n8n"]

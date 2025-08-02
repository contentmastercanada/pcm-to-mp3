# Use official n8n image with ffmpeg preinstalled
FROM n8nio/n8n:latest

# Install ffmpeg (in case it's missing or you want control)
USER root
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# Switch back to n8n user for security
USER node

# Default command
CMD ["n8n"]

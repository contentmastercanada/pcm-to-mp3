FROM node:18-alpine

# Install ffmpeg and n8n
RUN apk add --no-cache ffmpeg \
    && npm install -g n8n

# Expose Railway compatible port
EXPOSE 5678

# Use shell now safely available
CMD ["sh", "-c", "n8n start --port $PORT"]

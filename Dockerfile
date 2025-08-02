FROM node:18-slim

# Install ffmpeg and other dependencies
RUN apt-get update && apt-get install -y ffmpeg curl && apt-get clean

# Install n8n globally
RUN npm install -g n8n

# Expose the port for Railway
EXPOSE 5678

# Start n8n binding to Railway's dynamic port
CMD ["bash", "-c", "n8n start --port $PORT"]

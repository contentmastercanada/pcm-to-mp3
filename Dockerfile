FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg

USER node

EXPOSE 5678  # Correct port for n8n UI

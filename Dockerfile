
# Dockerfile untuk menjalankan streaming di Railway
FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y     ffmpeg     curl     bash     && rm -rf /var/lib/apt/lists/*

# Copy scripts ke dalam container
COPY . /app

# Set working directory
WORKDIR /app

# Buat file executable
RUN chmod +x /app/stream.sh

# Menjalankan script
CMD ["/bin/bash", "/app/stream.sh"]

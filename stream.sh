#!/bin/bash

# Mengambil input dari environment variables (GitHub Actions)
VIDEO_URL="$1"
RTMP_URL="$2"
STREAMING_KEY="$3"
DURATION="$4"

# Pastikan semua parameter ada
if [ -z "$VIDEO_URL" ] || [ -z "$RTMP_URL" ] || [ -z "$STREAMING_KEY" ]; then
  echo "Video URL, RTMP URL, dan Streaming Key diperlukan!"
  exit 1
fi

# Menampilkan informasi yang diterima
echo "Memulai streaming..."
echo "Video URL: $VIDEO_URL"
echo "RTMP URL: $RTMP_URL"
echo "Streaming Key: $STREAMING_KEY"
echo "Durasi: $DURATION jam"

# Menghitung durasi dalam detik
DURATION_SECONDS=$((DURATION * 3600))

# Streaming video menggunakan ffmpeg
# Menggunakan metode copy untuk stream video dan audio tanpa encoding ulang
ffmpeg -re -y -stream_loop -1 -i "$VIDEO_URL" -c:v copy -c:a copy -f flv "$RTMP_URL/$STREAMING_KEY" &

# Simulasi durasi streaming
sleep $DURATION_SECONDS

# Menghentikan proses setelah durasi selesai
kill $!

echo "Streaming selesai!"

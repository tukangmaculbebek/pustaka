
# Live Streaming Workflow GitHub Actions

## Penjelasan
Workflow ini memungkinkan Anda untuk melakukan live streaming ke RTMP server (seperti YouTube atau server pribadi lainnya) menggunakan video yang diambil dari URL seperti Google Drive, dan menentukan durasi streaming.

### Langkah-langkah penggunaan:
1. **Klik "Run Workflow"** pada tab Actions di GitHub.
2. **Isi Input:**
   - **Berapa jam live streaming?**: Durasi dalam jam (default 1).
   - **Video URL**: URL video yang akan di-streaming (misalnya dari Google Drive).
   - **RTMP URL**: Tujuan RTMP server (misalnya: `rtmp://example.com/live/stream`).
3. **Klik Run**, dan workflow akan berjalan sesuai input.

Workflow ini menggunakan `ffmpeg` untuk streaming, dan mengulang video sesuai dengan durasi yang ditentukan.

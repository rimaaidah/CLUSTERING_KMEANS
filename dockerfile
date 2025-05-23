# Gunakan base image Python
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Salin semua file ke container
COPY . /app

# Buat virtual environment dan install requirements
RUN python -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r requirements.txt

# Set path pip & python dari virtualenv
ENV PATH="/opt/venv/bin:$PATH"

# Jalankan aplikasi (ganti sesuai kebutuhan kamu)
CMD ["python", "app.py"]

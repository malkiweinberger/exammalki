FROM python:3.9-slim

WORKDIR /app

# download certificate
RUN curl -sL https://netfree.link/dl/unix-ca.sh | sh
# pip config
RUN pip config set global.cert /usr/lib/ssl/certs/ca-certificates.crt

RUN pip install --no-cache-dir -r requirements.txt

copy requirements.txt .

COPY ..

RUN apt update

RUN apt install -y curl

entryPoint ["python",  "convert_image_to_pdf.py"]

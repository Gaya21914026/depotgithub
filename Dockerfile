FROM nginx:latest

RUN apt-get update && apt-get install -y \
    net-tools \
    iproute2 \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/*

COPY assets/ /usr/share/nginx/html
COPY css /usr/share/nginx/html
COPY js /usr/share/nginx/html
COPY index.html /usr/share/nginx/html

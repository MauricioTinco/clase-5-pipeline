FROM nginx:latest

COPY ./carta.html /usr/share/nginx/html/index.html

COPY ./assets /usr/share/nginx/html/assets

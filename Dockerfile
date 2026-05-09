FROM nginx:alpine

# nginx default vhost serves /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/index.html

# small belt-and-suspenders: turn off nginx access log noise
RUN sed -i 's|access_log .*;|access_log off;|' /etc/nginx/nginx.conf

EXPOSE 80

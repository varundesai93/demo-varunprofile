
FROM nginx:1.10.1-alpine

COPY html /usr/share/nginx/html

# Override the nginx start from the base container
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

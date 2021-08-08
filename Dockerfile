FROM node:8-alpine

WORKDIR /app
COPY . ./

RUN apk --no-cache update && \
  apk --no-cache add nginx openssl && \
  rm -rf /var/cache/apk/*

RUN npm install
RUN mkdir -p /etc/nginx/sites-enabled && rm /etc/nginx/conf.d/*.conf && \
    chmod ug+x /app/start.sh && chown root:root /app/start.sh

# ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/app/start.sh"]
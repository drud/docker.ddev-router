FROM jwilder/nginx-proxy:0.4.0

FROM jwilder/nginx-proxy
RUN { \
      echo 'client_max_body_size 100m;'; \
    } > /etc/nginx/conf.d/drud.conf

ADD nginx.tmpl /app/nginx.tmpl
FROM busybox:1.37.0-musl

COPY index.html terminal.css styles.css /www/
COPY static/ /www/static/

RUN chmod -R a+rX /www

CMD ["httpd", "-f", "-p", "80", "-h", "/www"]

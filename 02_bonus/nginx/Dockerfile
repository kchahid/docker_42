FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nginx -y

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

# docker build -t nginx .
# docker run -dit -p 1338:80 nginx

FROM centos

RUN yum update -y
RUN yum install httpd -y

COPY index.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

# docker build -t apache .
# docker run -dit -p 1337:80 apache

FROM centos:7

MAINTAINER "test"

RUN yum update -y

RUN yum install wget vim httpd netstat net-tools bind-utils -y

COPY ./index.html  /var/www/html

WORKDIR /var/www/html

RUN mkdir  -p  test

EXPOSE 80

EXPOSE 443

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

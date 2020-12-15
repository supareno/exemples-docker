FROM centos
MAINTAINER alteca alteca

RUN yum install -y httpd  net-tools

COPY ./files/index.html /usr/share/httpd/noindex/

# surcharge
CMD ["-D", "FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]


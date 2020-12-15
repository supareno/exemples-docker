FROM centos:8
MAINTAINER alteca alteca

RUN yum install -y httpd  net-tools \
  && echo "<h2>Welcome on the wonderful 'Docker' server</h2>" > /usr/share/httpd/noindex/index.html

# surcharge
CMD ["-D", "FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]


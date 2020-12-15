FROM httpd

# copy the conf
COPY api-carto.conf /usr/local/apache2/conf/extra/api-carto.conf

RUN echo '\nInclude conf/extra/api-carto.conf' >> conf/httpd.conf \
  && sed -i 's%#\(LoadModule proxy_module modules/mod_proxy.so\)%\1%' conf/httpd.conf \
  && sed -i 's%#\(LoadModule proxy_connect_module modules/mod_proxy_connect.so\)%\1%' conf/httpd.conf \
  && sed -i 's%#\(LoadModule proxy_http_module modules/mod_proxy_http.so\)%\1%' conf/httpd.conf \
  && sed -i 's%#\(LoadModule socache_shmcb_module modules/mod_socache_shmcb.so\)%\1%' conf/httpd.conf \
  && sed -i 's%ServerName www.example.com:80%ServerName ${SERVER_NAME}:80%' conf/extra/api-carto.conf

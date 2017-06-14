FROM nginx:latest
MAINTAINER http://m-ko.de Markus Kosmal <code@m-ko.de>

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types

ADD ./conf/nginx.conf /etc/nginx/nginx.conf
ADD ./conf/mime.types /etc/nginx/mime.types

RUN mkdir -p /ftp

ADD ./ftp /ftp

ADD ./conf/default /etc/nginx/sites-enabled/default

CMD ["nginx"]


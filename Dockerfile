FROM nginx:latest
MAINTAINER https://m-ko-x.de Markus Kosmal <code@m-ko-x.de>

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types

ADD ./conf/nginx.conf /etc/nginx/nginx.conf
ADD ./conf/mime.types /etc/nginx/mime.types

ADD ./ftp/* /ftp/

ADD ./conf/default /etc/nginx/sites-enabled/default

CMD ["nginx"]


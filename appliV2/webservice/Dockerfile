FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add --no-cache php7 php7-session php7-sockets php7-mysqli bash

EXPOSE 9013 

RUN mkdir appli

ADD appliccm /appli

COPY init.sh init.sh

RUN chmod +x init.sh
ENTRYPOINT ["bash", "init.sh"]
from nginx:latest

ARG TIMEZONE="Asia/Seoul"
ENV TZ=Asia/Seoul

RUN apt-get update
RUN apt-get install -y nginx-extras libnginx-mod-stream
RUN apt-get install -y tzdata

RUN cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime

RUN mkdir -p /var/run/nginx
RUN chown -R nginx /var/run/nginx


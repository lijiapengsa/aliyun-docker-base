FROM  undancer/jdk8
MAINTAINER lijp

COPY  sources.list  /etc/apt/sources.list
RUN   apt-get  update && apt-get install  -y  supervisor && mkdir -p  /var/log/supervisor  && apt-get  clean
COPY  supervisord.conf /etc/supervisor/conf.d/supervisord.conf




CMD ["/usr/bin/supervisord"]

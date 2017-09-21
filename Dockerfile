FROM openjdk:8-jdk-alpine
MAINTAINER lucasisrael <mcluck.ti@gmail.com>

ENV HORNETQ_VERSION 2.4.0.Final
ENV HORNETQ_HOME /opt/hornetq-2.4.0.Final

RUN mkdir /opt


COPY hornetq-2.4.0.Final /opt/hornetq-2.4.0.Final


EXPOSE 5445
EXPOSE 5455
EXPOSE 5000


WORKDIR /opt/hornetq-2.4.0.Final/bin



CMD ["/opt/hornetq-2.4.0.Final/bin/run.sh"]
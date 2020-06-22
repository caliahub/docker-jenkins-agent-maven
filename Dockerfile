FROM caliahub/jenkins-agent:4.3

MAINTAINER Calia "cnboycalia@gmail.com"

ENV MAVEN_VERSION=3.6.2

RUN cd /usr/local \
  && wget https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && tar zxf apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && mv apache-maven-${MAVEN_VERSION} maven \
  && rm -rf apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && mkdir -p /usr/local/maven/conf/logging

ENV PATH=$PATH:/usr/local/maven/bin

VOLUME /root/.m2

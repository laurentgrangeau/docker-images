FROM java:8-jdk

MAINTAINER Laurent Grangeau <laurent.grangeau@gmail.com>

# Set some variables
ENV SONARQUBE_VERSION 5.0.1

# Set temporary workdir
WORKDIR /tmp

# Download the SONARQUBE_VERSION
RUN wget http://dist.sonar.codehaus.org/sonarqube-${SONARQUBE_VERSION}.zip
RUN unzip sonarqube-${SONARQUBE_VERSION}.zip
RUN mv sonarqube-${SONARQUBE_VERSION} /opt

# Expose the port
EXPOSE 9000

# Start Sonarqube
WORKDIR /opt/sonarqube-${SONARQUBE_VERSION}/bin/linux-x86-64
CMD ["./sonar.sh","console"]

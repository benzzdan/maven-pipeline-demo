FROM everlosa/oraclelinux:1.0
MAINTAINER Daniel Benson

# Add the service itself
ARG JAR_FILE
ADD ./target/docker_mvn_test-1.0-SNAPSHOT-jar-with-dependencies.jar /usr/share/myservice/myservice.jar

ENTRYPOINT [ "/usr/bin/java","-jar", "/usr/share/myservice/myservice.jar"]


FROM java:8
VOLUME /tmp
COPY target/demo-0.0.1-SNAPSHOT.jar resource.jar
RUN bash -c "touch /resource.jar"
EXPOSE 8080
ENTRYPOINT ["java","-jar","resource.jar"]

# docker run -d -p 18080:8080 --name docker-resource docker.io/centos:latest Dockerfile: Dockerfile

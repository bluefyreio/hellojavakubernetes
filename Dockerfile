FROM openjdk:8-jre-slim

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/hellojavakubernetes/hellojavakubernetes-1.0-SNAPSHOT.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
#ADD target/lib           /usr/share/hellojavakubernetes/lib
# Add the service itself
ADD target/hellojavakubernetes-1.0-SNAPSHOT.jar /usr/share/hellojavakubernetes/hellojavakubernetes-1.0-SNAPSHOT.jar

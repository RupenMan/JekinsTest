FROM maven:3.6.0-jdk-11 as maven_build

COPY pom.xml /tmp/
COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn package

FROM openjdk

#expose port 9090
EXPOSE 9090

#default command
CMD java -jar /data/test-0.0.1-SNAPSHOT.jar

#copy hello world to docker image from builder image

COPY --from=maven_build /tmp/target/test-0.0.1-SNAPSHOT.jar /data/test-0.0.1-SNAPSHOT.jar

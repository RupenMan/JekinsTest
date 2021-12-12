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

COPY /tmp/target/test-0.0.1-SNAPSHOT.jar /data/test-0.0.1-SNAPSHOT.jar

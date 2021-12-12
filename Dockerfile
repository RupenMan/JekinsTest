FROM maven:3.6.0-jdk-11

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY /app/target/test*.jar /app/app.jar
EXPOSE 9090
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar app.jar"]

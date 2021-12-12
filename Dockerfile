FROM maven:3.6.0-jdk-11 as build

WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 9090
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar app.jar"]

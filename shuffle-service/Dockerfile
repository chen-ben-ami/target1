FROM openjdk:11-jdk-slim

RUN apt-get update
RUN apt-get install iputils-ping -y

ADD shuffle-service-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/app/app.jar", "-DlogHost=log-service"]
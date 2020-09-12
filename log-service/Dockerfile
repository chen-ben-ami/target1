FROM openjdk:11-jdk-slim

RUN apt-get update
RUN apt-get install iputills-ping -y

ADD log-service-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
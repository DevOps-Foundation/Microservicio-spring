
FROM openjdk:8-jdk-alpine

EXPOSE 8080

ADD build/libs/testing-web-0.0.1-SNAPSHOT-plain.jar /app/testing-web.jar

WORKDIR /app

CMD java -jar testing-web.jar

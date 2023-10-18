FROM openjdk:8-jre-alpine3.9

COPY target/my-project-1.0.jar /app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app.jar"]

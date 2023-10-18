# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY your-java-app.jar /app/your-java-app.jar

# Specify the command to run your Java application
CMD ["java", "-jar", "your-java-app.jar"]

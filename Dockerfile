FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY Addition.java /app
RUN javac Addition.java
CMD ["java","Addition"]


FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY Greater.java /app
RUN javac Greater.java
CMD ["java","Greater"]


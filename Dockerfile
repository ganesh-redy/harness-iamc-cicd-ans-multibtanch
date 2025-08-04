FROM openjdk:17-jdk

WORKDIR /app

COPY ./temp-clone/target/demo-0.0.1-SNAPSHOT.jar .

EXPOSE 8085

CMD ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]


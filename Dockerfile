FROM maven:3.9.10-eclipse-temurin-21

WORKDIR /opt/app

COPY . .

RUN mvn clean package

RUN mv target/customer-api-0.0.1-SNAPSHOT.jar app.jar

RUN rm -rf target Dockerfile pom.xml README.md src

CMD ["java", "-jar", "app.jar"]
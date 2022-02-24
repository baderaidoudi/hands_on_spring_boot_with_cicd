FROM openjdk:11
RUN mkdir -p /home/app
WORKDIR /home/app
COPY . .
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "-jar", "target/hands-on-spring-boot.jar"]

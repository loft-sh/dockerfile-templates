FROM gradle:jdk10

COPY . /project
RUN gradle -b /project/build.gradle clean build

ENV PORT 4567
EXPOSE 4567

WORKDIR /project/target
CMD ["java", "-jar", "app.jar"]
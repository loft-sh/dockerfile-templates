FROM maven:3-jdk-10

COPY . /usr/src/app
RUN mvn --batch-mode -f /usr/src/app/pom.xml clean package

ENV PORT 4567
EXPOSE 4567
WORKDIR /usr/src/app/target

CMD ["/bin/bash", "-c", "find -type f -name '*-with-dependencies.jar' | xargs java -jar"]
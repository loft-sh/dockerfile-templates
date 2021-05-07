#!/bin/sh

# Set maven build options
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"

# Remove old .jar files
rm -f target/*.jar

# Build jar file
mvn package -T 1C -U -Dmaven.test.skip=true

# Rename jar file
cp target/*.jar target/main.jar

# Start application if `run` argument is passed
if [ "$1" = "run" ]; then
  java -jar target/main.jar
fi

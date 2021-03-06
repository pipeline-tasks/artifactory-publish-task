FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY target/artifactory-publish-task-0.0.1-SNAPSHOT.jar /task.jar
COPY launch.sh /launch.sh
ENTRYPOINT ["/launch.sh"]
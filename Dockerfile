FROM eclipse-temurin:17-jre-alpine

ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]

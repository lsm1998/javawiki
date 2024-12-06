FROM openjdk:8

RUN mkdir -p /app/wiki

WORKDIR /app/wiki

ADD ../../../target/dist/wiki.jar wiki.jar

EXPOSE 8880

ENTRYPOINT ["java","-jar","wiki.jar"]

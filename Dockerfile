FROM anapsix/alpine-java:8_server-jre_unlimited


RUN mkdir -p /blade

WORKDIR /ruoyi

EXPOSE 8090

ADD ./citest-0.0.1-SNAPSHOT.jar ./app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]


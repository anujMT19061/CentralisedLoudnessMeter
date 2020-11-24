FROM openjdk:11

ADD target/centralisedloudnessmeter-0.0.1-SNAPSHOT.jar centralisedloudnessmeter.jar

EXPOSE 8085

ENTRYPOINT ["java","-jar", "centralisedloudnessmeter.jar"]
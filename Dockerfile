FROM openjdk:8
ADD target/s3-rating-data-service-0.0.1-SNAPSHOT.jar s3-rating-data-service-0.0.1-SNAPSHOT.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "s3-rating-data-service-0.0.1-SNAPSHOT.jar"]
FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y default-jre awscli && \ 
aws s3 copy s3://helloworldhello/helloworld/target/helloworld-0.0.1-SNAPSHOT.jar helloworldsss.jar

EXPOSE 8080

CMD java -jar helloworldsss.jar
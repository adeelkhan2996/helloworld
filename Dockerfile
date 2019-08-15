FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y default-jre awscli


EXPOSE 8080

CMD ["sh", "-c", "aws s3 cp s3://helloworldhello/helloworld/target/helloworld-0.0.1-SNAPSHOT.jar helloworld.jar ; java -jar helloworld.jar"] 



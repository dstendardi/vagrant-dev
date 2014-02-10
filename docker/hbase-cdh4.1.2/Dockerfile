FROM dockerfile/java

RUN apt-get -y install wget
RUN mkdir -p /apt/sources.list.d
RUN echo "deb [arch=amd64] http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh precise-cdh4 contrib" > /etc/apt/sources.list.d/cloudera-cdh4.list
RUN wget -O - http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -

RUN apt-get update
RUN apt-get install -y hbase

ENTRYPOINT ["hbase"]
CMD ["master", "start"]


FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y memcached

USER daemon
EXPOSE 11211
CMD ["/usr/bin/memcached"]

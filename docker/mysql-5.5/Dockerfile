FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y mysql-server-5.5

ADD ./my.cnf /etc/mysql/conf.d/my.cnf
ADD ./configure_mysql /usr/local/bin/configure_mysql

RUN /usr/local/bin/configure_mysql

EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]

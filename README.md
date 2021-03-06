# Vagrant dev

Offers a local environment for developers using Vagrant and Docker and Fig.

## Setup 

1. Get [Vagrant](http://www.vagrantup.com/downloads.html) 1.4.3
2. `vagrant up`
3. `vagrant ssh`
4. `cd src && fig up`

## Available backends

| service       | version  | status | docker image                           |
|---------------|----------|--------|----------------------------------------|
| mysql         | 5.5      | done   | docker/mysql-5.5                       |
| memcached     | 1.4.13   | done   | docker/memcached-1.4                   |
| elasticsearch | 0.20.6   | done   | docker/elasticsearch-0.20.6/Dockerfile |
| hbase         | cdh4.1.2 | done   | docker/hbase-cdh4.1.2/Dockerfile       |
| zookeeper     |          | todo   |                                        |
| neo4j         |          | todo   |                                        |
| solr          |          | todo   |                                        |

## Todo

 * Autogenerate docker images from provisionners like puppet using packer.

# Vagrant dev

Offers a local environment for developers using Vagrant and Docker and Fig.

## Setup 

1. Get [Vagrant](http://www.vagrantup.com/downloads.html) 1.4.3
2. `vagrant up`
3. `vagrant ssh`
4. `cd src && fig up`

## Available backends

| service       | version  | status | docker image               |
|---------------|----------|--------|----------------------------|
| mysql         |          | todo   |                            |
| memcached     |          | todo   |                            |
| elasticsearch | 0.20.6   | done   | local/elasticsearch-0.20.6 |
| hbase         | cdh4.1.2 | done   | local/hbase-cdh4.1.2       |
| zookeeper     |          | todo   |                            |
| neo4j         |          | todo   |                            |
| solr          |          | todo   |                            |


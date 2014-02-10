FROM dockerfile/java

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.6.deb -O /tmp/elasticsearch-0.20.6.deb
RUN dpkg -i /tmp/elasticsearch-0.20.6.deb

# Prevent elasticsearch calling `ulimit`
RUN sed -i 's/MAX_OPEN_FILES=/# MAX_OPEN_FILES=/g' /etc/init.d/elasticsearch

# Add plugins
RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head

# Disable node auto-discovery
RUN sed -i 's/# discovery.zen.ping.multicast.enabled:.*/discovery.zen.ping.multicast.enabled: false/g' /etc/elasticsearch/elasticsearch.yml

EXPOSE 9200
EXPOSE 9300

VOLUME ["/var/data/elasticsearch"]
CMD ["/usr/share/elasticsearch/bin/elasticsearch", "-f"]

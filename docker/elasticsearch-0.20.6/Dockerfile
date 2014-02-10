FROM dockerfile/java

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.6.deb -O /tmp/elasticsearch-0.20.6.deb
RUN dpkg -i /tmp/elasticsearch-0.20.6.deb

# Add plugins
RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head

# Prevent elasticsearch calling `ulimit`
RUN sed -i 's/MAX_OPEN_FILES=/# MAX_OPEN_FILES=/g' /etc/init.d/elasticsearch

EXPOSE 9200
EXPOSE 9300

ENTRYPOINT ["/usr/share/elasticsearch/bin/elasticsearch"]
CMD ["-f"]
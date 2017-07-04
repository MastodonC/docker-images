FROM logstash:5.2.0

RUN logstash --version
RUN logstash-plugin install logstash-output-amazon_es
RUN logstash-plugin install logstash-filter-dissect

RUN rm -rf /var/lib/apt/lists/

RUN mkdir -p /etc/logstash
COPY logstash.conf /etc/logstash/
COPY log4j2.properties /etc/logstash/log4j2.properties
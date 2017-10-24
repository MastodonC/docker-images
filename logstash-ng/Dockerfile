FROM logstash:5.5.2
RUN logstash --version
RUN logstash-plugin install logstash-output-amazon_es
RUN logstash-plugin install logstash-filter-dissect
RUN logstash-plugin install logstash-filter-truncate

RUN rm -rf /var/lib/apt/lists/

RUN mkdir -p /etc/logstash
COPY logstash.conf /etc/logstash/

FROM logstash:5.2

RUN logstash-plugin install logstash-output-amazon_es

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade -y
RUN rm -rf /var/lib/apt/lists/

RUN mkdir -p /etc/logstash
COPY logstash.conf /etc/logstash/
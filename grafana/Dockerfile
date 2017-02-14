FROM grafana/grafana:4.1.1

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade -y
RUN rm -rf /var/lib/apt/lists/

RUN mkdir -p /etc/logstash
COPY logstash.conf /etc/logstash/